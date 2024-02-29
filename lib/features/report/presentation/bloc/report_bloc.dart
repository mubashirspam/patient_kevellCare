import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/core/helper/date.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';

import '../../../../core/helper/enums.dart';
import '../../data/model/report_general_info_model.dart';
import '../../data/model/report_model.dart';
import '../../data/repository/genarate_prescription_pdf_impliment.dart';
import '../../domain/entities/fetch_report_payload.dart';
import '../../domain/repositories/fetch_report_general_repository.dart';
import '../../domain/repositories/fetch_report_repository.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

@injectable
class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final FetchReportGeneraInfoRepository fetchReportGeneraInfoRepository;
  final FetchReportRepository fetchReportRepository;

  ReportBloc(
    this.fetchReportGeneraInfoRepository,
    this.fetchReportRepository,
  ) : super(ReportState.initial()) {
    on<_FetchReportGeneralinfo>((event, emit) async {
      // if (state.hasData) {
      //   return;
      // }
      emit(
        state.copyWith(
          isGenaralInfoLoading: true,
          isError: false,
        ),
      );

      final response = await fetchReportGeneraInfoRepository
          .fetchReportGeneralinfo(id: event.id);

      final result = response.fold(
        (failure) => state.copyWith(
          isGenaralInfoLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isGenaralInfoLoading: false,
          hasGenaralInfoData: true,
          reportGeneraInfo: success,
        ),
      );
      emit(result);
    });

    on<_FetchReport>((event, emit) async {
      // if (state.hasData) {
      //   return;
      // }
      emit(
        state.copyWith(
          isReportDataLoading: true,
          isError: false,
          pdfCreated: false,
        ),
      );

      final response = await fetchReportRepository.fetchReport(
          fetchReportPayload: event.fetchReportPayload);

      final result = response.fold(
        (failure) => state.copyWith(
          isReportDataLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isReportDataLoading: false,
          hasReportData: true,
          reportData: success,
        ),
      );
      emit(result);
    });

    on<_PickDate>((event, emit) {
      emit(state.copyWith(
        startDate: event.startDate,
        endDate: event.endDate,
        reportData: filterDataByDateRange(
            state.reportData!, event.startDate, event.endDate),
      ));
    });

    on<_GeneratePdf>(
      (event, emit) async {
        emit(
          state.copyWith(
            action: null,
            isPdfLoading: true,
            pdfCreated: false,
            pdfError: false,
          ),
        );

        try {
          final pdf = await generatePDF(event.data, event.doctorData,
              event.patientData, event.apppoinmetDate);
          final bytes = await pdf.save();
          final tempDir = await getTemporaryDirectory();
          final file = File('${tempDir.path}/prescription.pdf');
          await file.writeAsBytes(bytes);
          emit(
            state.copyWith(
              action: event.action,
              pdfError: false,
              isPdfLoading: false,
              pdfCreated: true,
              pdf: pdf,
              pdfPath: file.path,
            ),
          );
        } catch (e) {
          log("error $e");
          emit(state.copyWith(
            pdfError: true,
            pdfCreated: false,
            pdfErrorMessage: e.toString(),
            isPdfLoading: false,
          ));
        }
      },
    );
  }

  Future<pw.Document> generatePDF(
    List<Prescription> data,
    Doctor doctorData,
    Patient patientData,
    DateTime apppoinmetDate,
  ) async {
    GeneratePrescriptionPdfRepoImpliment pdfClass =
        GeneratePrescriptionPdfRepoImpliment();
    final pdf =
        pdfClass.generatePDF(data, doctorData, patientData, apppoinmetDate);

    return pdf;
  }
}

ReportModel filterDataByDateRange(
    ReportModel reportData, DateTime startDateTime, DateTime endDateTime) {
  List<Datum> filteredData = reportData.data!.where((datum) {
    DateTime appointmentDate = datum.appointmentDate!;
    return appointmentDate.isAfterOrEquals(startDateTime) &&
        appointmentDate.isBeforeOrEquals(endDateTime);
  }).toList();

  return ReportModel(
    responseCode: reportData.responseCode,
    status: reportData.status,
    message: reportData.message,
    startdate: reportData.startdate,
    data: filteredData,
  );
}
