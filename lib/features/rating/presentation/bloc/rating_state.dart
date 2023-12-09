part of 'rating_bloc.dart';

@freezed
class RatingState with _$RatingState {

  const factory RatingState({
    required bool isLoading,
    required bool isError,
    required bool isUpdateLoading,
    required bool unauthorized,
    required bool hasData,
    required RatingModel? ratingDetails,
    required String ? message,
    required int? ratingcount,
  }) = _RatingState;

  factory RatingState.initial() => const RatingState(
        isLoading: false,
        isError: false,
        hasData: false,
        isUpdateLoading: false,
        unauthorized: false,
        ratingDetails: null,
        message: null, 
        ratingcount: 0,
      );
}
