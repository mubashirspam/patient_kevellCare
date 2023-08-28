import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/signup/domain/repositories/signup_repository.dart';

import '../data/models/signup_model.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupRepository signupRepository;
  SignupBloc(this.signupRepository) : super(SignupState.initial()) {
    on<_Signup>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          hasValidationData: false,
          isError: false,
        ));

        final response = await signupRepository.signup(
          phone: int.parse(event.phone),
          userName: event.userName,
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
              hasValidationData: true,
              isLoading: false,
              singnupDetails: success,
              message: 'You are successfully Registerd 🥳',
            ),
          );
        });
      },
    );
  }
}
