import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/rating/data/model/rating_model.dart';
import 'package:kevell_care/features/rating/domain/entites/create-rating_payload.dart';
import 'package:kevell_care/features/rating/domain/entites/edit_rating_payload.dart';
import 'package:kevell_care/features/rating/domain/entites/edit_rating_payload.dart';
import 'package:kevell_care/features/rating/domain/entites/edit_rating_payload.dart';
import 'package:kevell_care/features/rating/domain/entites/edit_rating_payload.dart';

import 'package:kevell_care/features/rating/domain/repositories/create%20_rating_repository.dart';
import 'package:kevell_care/features/rating/domain/repositories/edit_rating_repository.dart';

import 'package:kevell_care/features/rating/domain/repositories/get_rating_repository.dart';

part 'rating_event.dart';
part 'rating_state.dart';
part 'rating_bloc.freezed.dart';
@injectable

class RatingBloc extends Bloc<RatingEvent, RatingState> {
   final EditRatingRepository editRatingRepository;
   final CreateRatingRepository createRatingRepository;

final GetRatingRepository getRatingRepository;
  RatingBloc(this.getRatingRepository, this.editRatingRepository,this.createRatingRepository) : super(RatingState.initial()) {
    
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
   on<_EditRating>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          hasData: false,
          isError: false,
        ),
      );

  final response = await editRatingRepository.editRating(
      editRatingPayload: event.editRatingPayload
      );
      

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isError: false,
            isUpdateLoading: false,
            ratingDetails: success,
            hasData: true),
      );
      emit(result);
    });
    on<_CreateRating>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          hasData: false,
          isError: false,
        ),
      );
      final response = await createRatingRepository.createrating(
      createRatingPayload: event.createRatingPayload
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
              message: 'Thank you for ur feedback 🥳',
            ),
          );
    });
    });
  }
}
