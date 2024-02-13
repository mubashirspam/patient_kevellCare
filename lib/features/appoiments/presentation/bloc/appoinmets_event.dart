part of 'appoinmets_bloc.dart';

@freezed
class AppoinmetsEvent with _$AppoinmetsEvent {
  const factory AppoinmetsEvent.getAppoinments() = _GetAppoinments;
  const factory AppoinmetsEvent.createAppoinments(
      {required AppointmentsPayload appoinmentsPayload}) = _CreateAppoinments;

  const factory AppoinmetsEvent.updateAppoinments(
          {required UpdateAppoinmentsPayload appoinmetsPayload}) =
      _UpdateAppoinmets;

  const factory AppoinmetsEvent.deleteAppoinments({required int id}) =
      _DeleteAppoinmets;
  const factory AppoinmetsEvent.pickTime({
    required DateTime startTime,
    required DateTime endTime,
  }) = _PickTime;

  const factory AppoinmetsEvent.pay({required PaymentPayload payload}) = _Pay;
}
