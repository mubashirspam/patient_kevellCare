import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/forgot/data/model/change_password_model.dart';
import 'package:kevell_care/features/forgot/domain/repositories/change_pass_repository.dart';
import '../../../../configure/api/endpoints.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

@LazySingleton(as: ChangePasswordRepository)
 class ChangePassRepoImpliment implements ChangePasswordRepository {
  @override
  Future<Either<MainFailure, ChangePasswordModel>> change({
    required String email,
    required String otp,
    required String password,
  }) async {
    try {
      final fcm = await getTokenFromSS(fcmStoreKey);

      final response = await Dio().post(
        ApiEndPoints.verifyotp,
        data: {
          'cred': email,
          'otp':otp,
          'password':password,
          "device_type": "Android"
        },
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = ChangePasswordModel.fromJson(response.data);
          log(result.toJson().toString());
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
        if (e.response?.statusCode == 400 || e.response?.statusCode == 401) {
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
