import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../configure/api/endpoints.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/get_appoinments_repository.dart';
import '../models/appoiments_model.dart';

@LazySingleton(as: GetAppoinmentsRepository)
class GetAppoinmentsRepoImpliment implements GetAppoinmentsRepository {
  @override
  Future<Either<MainFailure, AppoimentModel>> getAppoinments() async {
    try {

       final token = await getTokenFromSS(secureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };
      final id = await getTokenFromSS(drIdsecureStoreKey);

      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.fetchAppoinment,        options: Options(headers: headers),
        data: {'patientId': int.parse(id.toString())},
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = AppoimentModel.fromJson(response.data);
          log(result.toString());
          return Right(result);
        case 400:
        case 401:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );
        case 502:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Server Error"),
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
