import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../configure/api/endpoints.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../domain/repositories/login_repository.dart';
import '../models/login_model.dart';

@LazySingleton(as: LoginRepository)
class LoginRepoImpliment implements LoginRepository {
  @override
  Future<Either<MainFailure, LoginModel>> login({
    required String usernameOrMobile,
  }) async {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.login,
        data: {
          'Username': usernameOrMobile,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = LoginModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
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
        if (e.response?.statusCode == 400 || e.response?.statusCode == 401) {
          log(e.toString());
          final result = FailuerModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
