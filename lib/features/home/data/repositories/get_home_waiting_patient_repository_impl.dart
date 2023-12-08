import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/configure/value/secure_storage.dart';
import 'package:kevell_care/features/home/data/models/available_doctor_model.dart';

import '../../../../configure/api/endpoints.dart';

import '../../../../configure/value/constant.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/get_home_waiting_patient_repository.dart';

@LazySingleton(as: GetAvailableDoctorRepository)
class GetAvailableDoctorRepoImpliment implements GetAvailableDoctorRepository {
  @override
  Future<Either<MainFailure, HomeAvailableDoctorModel>>
      getHomeAvailableDoctor() async {
    try {
      final token = await getTokenFromSS(secureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio().get(
        ApiEndPoints.getHomeAvailableDoctor,
        // "https://kevelldigital.com/doctor/api/getalldoctorSchedule?from=1&to=10",
        options: Options(
          headers: headers,
          validateStatus: (_) => true,
        ),
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = HomeAvailableDoctorModel.fromJson(response.data);
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
