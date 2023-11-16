import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class GetRatingRepository {
  Future<Either<MainFailure, RatingModel>> getRating();
}
