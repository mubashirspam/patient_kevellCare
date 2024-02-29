import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/configure/api/endpoints.dart';

import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/entities/fetch_report_payload.dart';
import '../../domain/repositories/fetch_report_repository.dart';
import '../model/report_model.dart';

@LazySingleton(as: FetchReportRepository)
class FetchReportRepoImpliment implements FetchReportRepository {
  @override
  Future<Either<MainFailure, ReportModel>> fetchReport({
    required FetchReportPayload fetchReportPayload,
  }) async {
    final token = await getTokenFromSS(secureStoreKey);

    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    try {
      print(fetchReportPayload.toJson().toString());
      final response = await Dio(BaseOptions()).post(
        V2.report,
        options: Options(headers: headers),
        data: fetchReportPayload.toJson(),
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = ReportModel.fromJson(response.data);

          // print(result.toJson().toString());

          return Right(result);
        case 400:
        case 401:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Error"),
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
            MainFailure.unauthorized(message: result.message ?? "Error"),
          );
        }
      }
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
  }
}
