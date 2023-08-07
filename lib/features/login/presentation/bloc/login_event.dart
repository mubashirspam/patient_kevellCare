part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({
    required String usernameOrMobile,
  }) = _Login;

  const factory LoginEvent.varyfiyOtp({
    required String otp,
    required String number,
  }) = _VaryfiyOtp;
}
