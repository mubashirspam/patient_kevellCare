part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool hasAvailableDoctorData,
    required bool isAvailableDoctorLoading,
    required bool unauthorized,
    required bool hasData,
    required bool isError,
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
      );
}
