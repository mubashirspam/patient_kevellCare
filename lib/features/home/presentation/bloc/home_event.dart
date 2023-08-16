part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomeAvailableDoctor() = _GetHomeAvailableDoctor;

  const factory HomeEvent.pickDate({
    required DateTime date,
  }) = _PickDate;

   const factory HomeEvent.pickTime({
    required DateTime startTime,
    required DateTime endTime,
  }) = _PickTime;
}
