import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../configure/api/endpoints.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../domain/repositories/signup_repository.dart';
import '../models/signup_model.dart';

@LazySingleton(as: SignupRepository)
class SignupRepoImpliment implements SignupRepository {
  @override
  Future<Either<MainFailure, SignupModel>> signup({
    required String name,
    required String mobileNo,
    required String password,
    required String email
  }) async {
    try {
      
      final response = await Dio(BaseOptions()).post(ApiEndPoints.register,
          data: {
          'name': name,
          'mobile_no': mobileNo,
          'email_id': email,
          "password": password,
          "device_type": "Android"
        },);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final registerResult = SignupModel.fromJson(response.data);
        log(registerResult.toString());

        return Right(registerResult);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = FailureModel.fromJson(response.data);
        return Left(
            MainFailure.unauthorized(message: result.message ?? "Error"));
      } else {
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
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
    // } else {
    //   return const Left(MainFailure.clientFailure());
    // }
  }
}
