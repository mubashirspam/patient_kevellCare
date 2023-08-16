import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../configure/api/endpoints.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/entities/create_appoinments.dart';
import '../../domain/repositories/create_appoinments_repository.dart';
import '../models/create_appoinment_resonse.dart';

@LazySingleton(as: CreateAppoinmentsRepository)
class CreateAppoinmentsRepoImpliment implements CreateAppoinmentsRepository {
  @override
  Future<Either<MainFailure, CreateResponse>> createAppoinments(
      {required AppoinmentsPayload appoinmentsPayload}) async {
    try {
      // final token = await getTokenFromSS(secureStoreKey);
      // final id = await getTokenFromSS(drIdsecureStoreKey);

      // final headers = {
      //   'Authorization': 'Bearer $token',
      //   'Content-Type': 'application/json',
      // };

      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.createAppoinments,
        data: appoinmentsPayload.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = CreateResponse.fromJson(response.data);
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
          final result = FailuerModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
