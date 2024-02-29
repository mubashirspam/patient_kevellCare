part of 'rating_bloc.dart';

@freezed
class RatingEvent with _$RatingEvent {

  const factory RatingEvent.buildRating({
    required int rating
  })=_BuildRating;

    const factory RatingEvent.getRating() = _GetRating;
 const factory RatingEvent.editRating({
         required EditRatingPayload editRatingPayload

  }) = _EditRating;
 const factory RatingEvent.createrating({
    required CreateRatingPayload createRatingPayload


  }) = _CreateRating;

  
  }