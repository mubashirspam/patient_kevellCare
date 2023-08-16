import 'package:dartz/dartz.dart';

import '../../../../core/failiar/main_failures.dart';

import '../../data/models/create_appoinment_resonse.dart';
import '../entities/create_appoinments.dart';

abstract class CreateAppoinmentsRepository {
  Future<Either<MainFailure, CreateResponse>> createAppoinments(
      {required AppoinmentsPayload appoinmentsPayload});
}
