
import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';

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


      on<_GeneratePdf>(
      (event, emit) async {
        emit(
          state.copyWith(
            isPdfLoading: true,
            pdfCreated: false,
            pdfError: false,
          ),
        );

        try {
          final pdf = await generatePDF(event.data);
          log(pdf.document.toString());

          final bytes = await pdf.save();
          final tempDir = await getTemporaryDirectory();
          final file = File('${tempDir.path}/prescription.pdf');

          await file.writeAsBytes(bytes);
          log(file.toString());
          log("emmited suscseeeeee");

          emit(
            state.copyWith(
              pdfError: false,
              isPdfLoading: false,
              pdfCreated: true,
              pdf: pdf,
              pdfPath: file.path,
            ),
          );
          log(pdf.toString());
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

  Future<pw.Document> generatePDF(List<Prescription> data) async {
    GeneratePrescriptionPdfRepoImpliment pdfClass =
        GeneratePrescriptionPdfRepoImpliment();
    final pdf = pdfClass.generatePDF(data);

    return pdf;
  }

    
  
}
