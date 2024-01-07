part of 'forgot_bloc.dart';

@freezed
class ForgotState with _$ForgotState {
  const factory ForgotState({
    required bool isLoading,
    required String message,
    required bool isError,
    required bool hasData,
    required ForgotModel? forgot,
  }) = _ForgotState;

  factory ForgotState.initial() => const ForgotState(
        isLoading: false,
        isError: false,
        hasData: false,
        forgot: null,
        message: "",
      );
}
