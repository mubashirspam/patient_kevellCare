part of 'rating_bloc.dart';

@freezed
class RatingEvent with _$RatingEvent {

  const factory RatingEvent.buildRating({
    required int rating
  })=_BuildRating;

    const factory RatingEvent.getRating() = _GetRating;

  const factory RatingEvent.rating({
    required String reveiw,
    required String rating,
  }) = _Rating;
  
  }