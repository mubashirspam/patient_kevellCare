part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required String message,
    required bool isError,
    required bool otpVarified,
    required bool hasValidationData,
    required LoginModel? loginDetails,
        required ForgotModel? forgot,

    required VerifyOtpModel ? otpDetails,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        isLoading: false,
        isError: false,
        hasValidationData: false,
        otpVarified: false,
        loginDetails: null,
        otpDetails: null,
        message: "",
        forgot: null
      );
}
