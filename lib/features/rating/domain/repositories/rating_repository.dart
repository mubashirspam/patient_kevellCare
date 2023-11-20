import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class RatingRepository {
  Future<Either<MainFailure, RatingModel>> rating({
    required int reveiw,
    required String rating,
  });
}
