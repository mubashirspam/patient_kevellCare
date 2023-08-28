import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/core/failiar/failiur_model.dart';

import '../../../../configure/api/endpoints.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/delete_appoinments_repository.dart';
import '../models/delete_appoinments_model.dart';

@LazySingleton(as: DeleteAppoinmentsRepository)
class DeleteAppoinmentsRepoImpliment implements DeleteAppoinmentsRepository {
  @override
  Future<Either<MainFailure, DeleteAppoinmentsModel>> deleteAppoinments({
    required String id,
  }) async {
    try {
      final response = await Dio(BaseOptions()).delete(
        ApiEndPoints.deleteAppoinments,
        data: {"id": id},
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = DeleteAppoinmentsModel.fromJson(response.data);
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
        if (e.response?.statusCode == 400 || e.response?.statusCode == 401) {
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
