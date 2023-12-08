part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState({
    required bool isGenaralInfoLoading,
    required bool isReportDataLoading,
    required bool hasGenaralInfoData,
    required bool hasReportData,
    required bool unauthorized,
    required bool isError,
    ReportGeneraInfoModel? reportGeneraInfo,
    ReportModel? reportData,
    required bool isPdfLoading,
    required bool pdfCreated,
    required pw.Document? pdf,
    required bool pdfError,
    required String pdfErrorMessage,
    String? pdfPath,
    required DateTime startDate,
    required DateTime endDate,
        required PdfActions ? action,
  }) = _ReportState;

  factory ReportState.initial() =>  ReportState(
        isGenaralInfoLoading: false,
        unauthorized: false,
        action:null ,
        isError: false,
        hasReportData: false,
        isReportDataLoading: false,
        hasGenaralInfoData: false,
        reportData: null,
        reportGeneraInfo: null,
        isPdfLoading: false,
        pdf: null,
        pdfCreated: false,
        pdfError: false,
        pdfErrorMessage: "",
        pdfPath: "",
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      );
}
