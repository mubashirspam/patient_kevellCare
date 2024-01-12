
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/login/data/models/otp_model.dart';

import '../../data/models/login_model.dart';
import '../../domain/repositories/login_repository.dart';
import '../../domain/repositories/otp_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;
  final OtpRepository otpRepository;
  LoginBloc(this.loginRepository, this.otpRepository)
      : super(LoginState.initial()) {
    on<_Login>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          hasValidationData: false,
          isError: false,
        ));

        final response = await loginRepository.login(
          usernameOrMobile: event.usernameOrMobile,
          password: event.password,
        );

        response.fold((failure) {
          return emit(state.copyWith(
            isLoading: false,
            message: failure.message,
            isError: true,
          ));
        }, (success) {
          emit(
            state.copyWith(
              isError: false,
              hasValidationData: true,
              isLoading: false,
              loginDetails: success,
              message: 'You are successfully Logined 🥳',
            ),
          );
        });
      },
    );

    on<_VaryfiyOtp>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          hasValidationData: false,
          isError: false,
          otpVarified: false,
        ),
      );
      final response = await otpRepository.varifyOtp(
        number: event.number,
        otp: event.otp,
      );

      final result = response.fold(
        (failure) => state.copyWith(
          isLoading: false,
          otpVarified: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isError: false,
            isLoading: false,
            otpVarified: true,
            otpDetails: success,
            message: success.result ?? ""),
      );
      emit(result);
    });
  }
}
