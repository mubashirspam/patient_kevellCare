import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';
import '../../domain/repositories/get_profile_repository.dart';
import '../models/profile_model.dart';

@LazySingleton(as: GetProfileRepository)
class GetProfileRepoImpliment implements GetProfileRepository {
  @override
  Future<Either<MainFailure, ProfileModel>> getProfile(
      {required int id}) async {
    try {
      final id = await getTokenFromSS(drIdsecureStoreKey);
      final token = await getTokenFromSS(secureStoreKey);
      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio().get(
          "https://2a0c-183-82-33-226.ngrok.io/patients/api/patientinfoby?id=1000");

      log("Response ${response.data}");

      log(id.toString());

      // final response = await Dio(BaseOptions()).get(
      //   ApiEndPoints.getprofile,
      //   options: Options(headers: headers,  validateStatus: (_) => true,),
      //   data: {'id': int.parse("$id")},
      // );

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
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
  }
}
