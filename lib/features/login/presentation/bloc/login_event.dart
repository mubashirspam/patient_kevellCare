part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({
    required String usernameOrMobile,
     required String password,
  }) = _Login;

  const factory LoginEvent.varyfiyOtp({
    required String otp,
    required String number,
    required bool islogin
  }) = _VaryfiyOtp;
  const factory LoginEvent.forgot({
    required String email,
  }) = _Forgot;
}
