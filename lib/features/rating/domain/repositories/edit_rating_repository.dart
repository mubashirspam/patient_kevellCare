import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/domain/entites/edit_rating_payload.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class EditRatingRepository {
  Future<Either<MainFailure, RatingModel>> editRating({
         required EditRatingPayload editRatingPayload


  });
}
