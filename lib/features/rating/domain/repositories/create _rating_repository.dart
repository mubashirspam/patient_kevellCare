import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class CreateRatingRepository {
  Future<Either<MainFailure, RatingModel>> createrating({
    required String review,
    required String rating,

  });
}
