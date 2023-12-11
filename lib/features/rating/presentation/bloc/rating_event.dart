part of 'rating_bloc.dart';

@freezed
class RatingEvent with _$RatingEvent {

  const factory RatingEvent.buildRating({
    required int rating
  })=_BuildRating;

    const factory RatingEvent.getRating() = _GetRating;
 const factory RatingEvent.editRating({
    required String rating,
    required String reveiw,
  }) = _EditRating;
 const factory RatingEvent.createrating({
    required String rating,
    required String reveiw,
        // required int id,
        //     required int appointmentid,


  }) = _CreateRating;

  
  }