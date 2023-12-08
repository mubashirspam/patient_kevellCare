part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup({
    required Map<String,String> payload,
   
  }) = _Signup;
}
