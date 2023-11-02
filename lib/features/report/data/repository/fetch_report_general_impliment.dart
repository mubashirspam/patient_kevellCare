import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kevell_care/configure/value/secure_storage.dart';
import 'package:kevell_care/features/report/data/model/report_general_info_model.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/configure/api/endpoints.dart';

import '../../../../configure/value/constant.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/fetch_report_general_repository.dart';

@LazySingleton(as: FetchReportGeneraInfoRepository)
class FetchReportGeneraInfoRepoImpliment
    implements FetchReportGeneraInfoRepository {
  @override
  Future<Either<MainFailure, ReportGeneraInfoModel>> fetchReportGeneralinfo({
    required int id,
  }) async {
    try {
        final token = await getTokenFromSS(secureStoreKey);


      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };
      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.patientreportgeneralinfo,
           options: Options(headers: headers),
        data: {'patientId': id},
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = ReportGeneraInfoModel.fromJson(response.data);
          log(result.toString());
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
