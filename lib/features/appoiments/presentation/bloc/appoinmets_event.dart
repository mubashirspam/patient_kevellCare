part of 'appoinmets_bloc.dart';

@freezed
class AppoinmetsEvent with _$AppoinmetsEvent {
  const factory AppoinmetsEvent.getAppoinments() = _GetAppoinments;
  const factory AppoinmetsEvent.createAppoinments(
    {required AppoinmentsPayload appoinmentsPayload }
  ) = _CreateAppoinments;
}
