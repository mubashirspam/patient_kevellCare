part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup({
    required String name,
    required String mobileNo,
    required String password,
    required String email
   
  }) = _Signup;
}
