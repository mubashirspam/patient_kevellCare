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
import '../../domain/repositories/get_profile_repository.dart';
import '../models/profile_model.dart';

@LazySingleton(as: GetProfileRepository)
class GetProfileRepoImpliment implements GetProfileRepository {
  @override
  Future<Either<MainFailure, ProfileModel>> getProfile() async {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      final mail = await getTokenFromSS(mailsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      log(mail.toString());

      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.getprofile,
        options: Options(headers: headers),
        data: {'Username': mail},
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
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
  }
}
