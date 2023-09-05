part of 'report_bloc.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.fetchReportGeneralinfo({
    required int id,
  }) = _FetchReportGeneralinfo;

  const factory ReportEvent.fetchReport({
    required FetchReportPayload fetchReportPayload,
  }) = _FetchReport;

  const factory ReportEvent.genaratePdf({
    required List<Prescription> data,
  }) = _GeneratePdf;
  const factory ReportEvent.pickDate({
    required DateTime startDate,
    required DateTime endDate,
  }) = _PickDate;
}
