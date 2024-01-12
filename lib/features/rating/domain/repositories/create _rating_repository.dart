import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/domain/entites/create-rating_payload.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class CreateRatingRepository {
  Future<Either<MainFailure, RatingModel>> createrating({
    required CreateRatingPayload createRatingPayload
  });
}
