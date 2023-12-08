import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../configure/api/endpoints.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';
import '../../domain/repositories/update_profile_repository.dart';
import '../models/profile_model.dart';

@LazySingleton(as: UpdateProfileRepository)
class UpdateProfileRepoImpliment implements UpdateProfileRepository {
  @override
  Future<Either<MainFailure, ProfileModel>> updateProfile({
    required String name,
    required String dob,
    required String address,
    required String mobileNumber,
  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(drIdsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).put(
        ApiEndPoints.updateProfile,
        options: Options(headers: headers,  validateStatus: (_) => true,),
        data: {
          "_id": int.parse("$id"),
          "name": name,
          "mobile": mobileNumber,
          "dob": dob,
          "Address": address
        },
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = ProfileModel.fromJson(response.data);
          log(result.toString());
          return Right(result);
        case 400:
        case 401:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );
        default:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unknown(message: result.message ?? "Unknown error"),
          );
      }
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
        if (e.response?.statusCode == 400) {
          log(e.toString());
          final result = FailureModel.fromJson(e.response!.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );
        }
      }
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
  }
}
