import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
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
        "https://kevelldigital.com/register/api/create/review",
        data: data,
      );


log("response === ${response.data}");
  

  switch (response.statusCode) {
        case 200:
        case 201:
          final registerResult = RatingModel.fromJson(response.data);
          log(response.data.toString());
          return Right(registerResult);
        case 400:
        case 401:
          // final result = FailureModel.fromJson(response.data);
          return Left(
              MainFailure.clientFailure(message: response.data['result'] ?? "Error"));
        case 502:
         
          return const Left(MainFailure.serverFailure(message: ''));
        default:
          return const Left(MainFailure.clientFailure(message: ''));
      }
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
      }
      return const Left(MainFailure.clientFailure(message: ''));
    }
  }
}
