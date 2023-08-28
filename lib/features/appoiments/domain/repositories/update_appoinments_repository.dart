import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/models/update_appoinments_model.dart';
import '../entities/update_appoinments.dart';

abstract class UpdateAppoinmentsRepository {
  Future<Either<MainFailure, UpdateAppoinmentsModel>> updateAppoinment({
    required UpdateAppoinmentsPayload appoinmentsPayload,
  });
}
