import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/domain/repositories/get_rating_repository.dart';
import 'package:kevell_care/features/rating/domain/repositories/rating_repository.dart';
import 'dart:developer';

part 'rating_event.dart';
part 'rating_state.dart';
part 'rating_bloc.freezed.dart';
@injectable

class RatingBloc extends Bloc<RatingEvent, RatingState> {
    final RatingRepository ratingRepository;
final GetRatingRepository getRatingRepository;
  RatingBloc(this.ratingRepository,this.getRatingRepository) : super(RatingState.initial()) {
    on<_Rating>((event, emit)async {
      // TODO: implement event handler
       emit(state.copyWith(
          isLoading: true,
          hasData: false,
          isError: false,
        ));

        final response = await ratingRepository.rating(
          reveiw: int.parse(event.reveiw),
          rating: event.rating,
        );

        response.fold(
            (failure) => {
                  failure.maybeWhen(
                    clientFailure: (s) {
                      log('clientFailure');
                      return emit(state.copyWith(
                        isLoading: false,
                        message: "Client faliure",
                        isError: true,
                      ));
                    },
                    unauthorized: (String message) {
                      log('emit unauthorized');
                      return emit(state.copyWith(
                        isLoading: false,
                        message: message,
                        isError: true,
                      ));
                    },
                    serverFailure: (s) {
                      log('emit serverFailure');
                      return emit(state.copyWith(
                        isLoading: false,
                        message: "Server faliure",
                        isError: true,
                      ));
                    },
                    orElse: () {
                      log('emit orElse');
                      return emit(state.copyWith(
                        isLoading: false,
                        message: "Error",
                        isError: true,
                      ));
                    },
                  )
                }, (success) {
          emit(
            state.copyWith(
              isError: false,
              hasData: true,
              isLoading: false,
              ratingDetails: success,
              message: 'Your Feedback is Recieved 🥳',
            ),
          );
        });
    });
     on<_GetRating>((event, emit) async {
      if (state.hasData) {
        return;
      }
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );

      final response = await getRatingRepository.getRating();

      final result = response.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isLoading: false,
          hasData: true,
          ratingDetails: success
        ),
      );
      emit(result);
    });

  
  }
}
