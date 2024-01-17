part of 'forgot_bloc.dart';

@freezed
class ForgotEvent with _$ForgotEvent {
  const factory ForgotEvent.forgot({
    required String email,
  }) = _Forgot;
   const factory ForgotEvent.change({
    required String otp,
    required String cred,
  }) = _VaryfiyOtp;
}