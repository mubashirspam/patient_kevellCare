import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/domain/repositories/get_rating_repository.dart';

import '../../../../configure/api/endpoints.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';


@LazySingleton(as: GetRatingRepository)
class GetRatingRepoImpliment implements GetRatingRepository {
  @override
  Future<Either<MainFailure, RatingModel>> getRating() async {
    try {
     
      final id = await getTokenFromSS(patientId);
 final token = await getTokenFromSS(secureStoreKey);
      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      log(id.toString());

      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.getrating,
        options: Options(headers: headers),
        data: {'id': id},
      );

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
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
  }
}
