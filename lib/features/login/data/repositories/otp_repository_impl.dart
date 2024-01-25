  import 'dart:developer';

  import 'package:dartz/dartz.dart';
  import 'package:dio/dio.dart';
  import 'package:injectable/injectable.dart';
  import '../../../../configure/api/endpoints.dart';
  import '../../../../configure/value/constant.dart';
  import '../../../../configure/value/secure_storage.dart';
  import '../../../../core/failiar/failiur_model.dart';
  import '../../../../core/failiar/main_failures.dart';

  import '../../domain/repositories/otp_repository.dart';
  import '../models/otp_model.dart';

  @LazySingleton(as: OtpRepository)
  class OtpRepoImpliment implements OtpRepository {
    @override
    Future<Either<MainFailure, VerifyOtpModel>> varifyOtp({
      required String otp,
      required String number,
      required bool islogin,
    }) async {
      log("message");
      try {
        final token = await getTokenFromSS(secureStoreKey);
        final headers = {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        };

        final response = await Dio(BaseOptions()).post(
          V2.verifyotp,
          // options: Options(headers: headers),
          data: {"otp": otp, "mobile": number},
        );

        switch (response.statusCode) {
          case 200:
          case 201:
            final result = VerifyOtpModel.fromJson(response.data);
            log(result.toJson().toString());
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
            log(e.toString());
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
