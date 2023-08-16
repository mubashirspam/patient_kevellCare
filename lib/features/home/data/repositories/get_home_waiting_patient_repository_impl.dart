import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/home/data/models/available_doctor_model.dart';

import '../../../../configure/api/endpoints.dart';
// import '../../../../configure/value/constant.dart';
// import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/get_home_waiting_patient_repository.dart';

@LazySingleton(as: GetAvailableDoctorRepository)
class GetAvailableDoctorRepoImpliment implements GetAvailableDoctorRepository {
  @override
  Future<Either<MainFailure, HomeAvailableDoctorModel>>
      getHomeAvailableDoctor() async {
    try {
      // final token = await getTokenFromSS(secureStoreKey);
      // final id = await getTokenFromSS(drIdsecureStoreKey);

      // final headers = {
      //   'Authorization': 'Bearer $token',
      //   'Content-Type': 'application/json',
      // };

      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.getHomeAvailableDoctor,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeAvailableDoctorModel.fromJson(response.data);
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
