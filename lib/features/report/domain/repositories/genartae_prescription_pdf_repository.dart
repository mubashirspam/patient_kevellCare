import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/report/data/model/report_model.dart';
import '../../../../core/failiar/main_failures.dart';


abstract class GeneratePrescriptionPdfRepository {
  Future<Either<MainFailure, Uint8List>> genaratePdf({
    required Prescription data,
  });
}
