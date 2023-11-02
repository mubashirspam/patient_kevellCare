import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:kevell_care/configure/api/endpoints.dart';
import 'package:kevell_care/core/failiar/main_failures.dart';

import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../domain/entities/update_appoinments.dart';
import '../../domain/repositories/update_appoinments_repository.dart';
import '../models/update_appoinments_model.dart';

@LazySingleton(as: UpdateAppoinmentsRepository)
class UpdateAppoinmentRepoImpliment implements UpdateAppoinmentsRepository {
  @override
  Future<Either<MainFailure, UpdateAppoinmentsModel>> updateAppoinment({
    required UpdateAppoinmentsPayload appoinmentsPayload,
  }) async {
    try {
       final token = await getTokenFromSS(secureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };
      final response = await Dio(BaseOptions()).put(
        ApiEndPoints.updateAppoinment,
                options: Options(headers: headers),
        data: appoinmentsPayload.toJson(),
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = UpdateAppoinmentsModel.fromJson(response.data);
          log(result.toString());
          return Right(result);
        case 400:
        case 401:
          final result = UpdateAppoinmentsModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );
        default:
          final result = UpdateAppoinmentsModel.fromJson(response.data);
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
            MainFailure.unauthorized(message: result.message ?? "Error"),
          );
        }
      }
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
  }
}
