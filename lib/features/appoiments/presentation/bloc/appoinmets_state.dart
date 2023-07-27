part of 'appoinmets_bloc.dart';

@freezed
class AppoinmetsState with _$AppoinmetsState {
  const factory AppoinmetsState({
    required bool isLoading,
    required bool hasData,
    required bool isCreateLoading,
    required bool isError,
    AppoimentModel? appoimentData,
  }) = _AppoinmetsState;

  factory AppoinmetsState.initial() => const AppoinmetsState(
      isCreateLoading: false,
      isLoading: false,
      isError: false,
      hasData: false,
      appoimentData: null);
}
