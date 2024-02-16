import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/configure/api/endpoints.dart';


import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/entities/create_appoinments.dart';
import '../../domain/repositories/create_appoinments_repository.dart';
import '../models/create_appoinment_resonse.dart';

@LazySingleton(as: CreateAppoinmentsRepository)
class CreateAppoinmentsRepoImpliment implements CreateAppoinmentsRepository {
  @override
  Future<Either<MainFailure, CreateAppointment>> createAppoinments({
    required AppointmentsPayload appoinmentsPayload,
  }) async {
    try {
      AppointmentsPayload payload = appoinmentsPayload;
      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(patientId);

      payload.patientId = int.parse(id!);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      print(payload.toJson().toString());
      final response = await Dio(BaseOptions()).post(
        V2.bookAppointment,

        data: payload.toJson(),
        options: Options(headers: headers),
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = CreateAppointment.fromJson(response.data);

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
