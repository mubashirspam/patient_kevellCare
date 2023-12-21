part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool hasAvailableDoctorData,
    required bool isAvailableDoctorLoading,
    required bool unauthorized,
    required bool hasData,
    required bool isError,
    required DateTime date,
    required DateTime? startTime,
    required DateTime? endTime,
    required int? token,
    HomeAvailableDoctorModel? availableDoctors,
    required Option<Either<MainFailure, HomeAvailableDoctorModel>>
        failureOrSuccessOption,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
      unauthorized: false,
      isError: false,
      hasData: false,
      hasAvailableDoctorData: false,
      isAvailableDoctorLoading: false,
      availableDoctors: null,
      failureOrSuccessOption: none(),
      startTime: null,
      endTime: null,
      token: null,
      date: DateTime.now());
}
