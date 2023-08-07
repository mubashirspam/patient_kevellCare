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

    required String phone,
    required String userName,

  }) async {

    try {
      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.register,
        queryParameters: {
          "username": userName,

          "mobile": phone,
      
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final registerResult = SignupModel.fromJson(response.data);
        log(registerResult.toString());

        return Right(registerResult);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = FailuerModel.fromJson(response.data);
        return Left(
            MainFailure.unauthorized(message: result.message ?? "Error"));
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
        if (e.response?.statusCode == 400) {
          log(e.toString());
          final result = FailuerModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
    // } else {
    //   return const Left(MainFailure.clientFailure());
    // }
  }
}
