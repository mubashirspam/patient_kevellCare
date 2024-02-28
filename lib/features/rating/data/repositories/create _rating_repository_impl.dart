import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/core/failiar/failiur_model.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/domain/entites/create-rating_payload.dart';
import 'package:kevell_care/features/rating/domain/repositories/create%20_rating_repository.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';


@LazySingleton(as:CreateRatingRepository)
class CreateRatingRepoImpliment implements CreateRatingRepository {
  @override
  Future<Either<MainFailure, RatingModel>> createrating({
    required CreateRatingPayload createRatingPayload

  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      Map<String, dynamic> data = createRatingPayload.toJson();

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions(
        headers: headers,
        validateStatus: (_) => true,
      )).post(
        "https://kevelldigital.com/v2/patients/create/review",
        data: data,
      );


 log("response === ${response.data}");
   switch (response.statusCode) {
        case 200:
        case 201:
          final result = RatingModel.fromJson(response.data);
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
        if (e.response?.statusCode == 400) {
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
