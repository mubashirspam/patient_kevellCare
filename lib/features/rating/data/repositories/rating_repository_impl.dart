import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/domain/repositories/rating_repository.dart';
import '../../../../configure/api/endpoints.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

@LazySingleton(as: RatingRepository)
class RatingRepoImpliment implements RatingRepository {
  @override
  Future<Either<MainFailure, RatingModel>> rating({
    required int reveiw,
    required String rating,
  }) async {
    try {
      final response = await Dio(BaseOptions()).post(ApiEndPoints.rating,
          data: {"review": reveiw, "rating": rating});

      if (response.statusCode == 200 || response.statusCode == 201) {
        final registerResult = RatingModel.fromJson(response.data);
        log(registerResult.toString());

        return Right(registerResult);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = FailureModel.fromJson(response.data);
        return Left(
            MainFailure.unauthorized(message: result.message ?? "Error"));
      } else {
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
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
    // } else {
    //   return const Left(MainFailure.clientFailure());
    // }
  }
}
