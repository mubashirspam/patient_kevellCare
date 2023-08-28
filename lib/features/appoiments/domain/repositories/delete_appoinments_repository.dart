import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/models/delete_appoinments_model.dart';


abstract class DeleteAppoinmentsRepository {
  Future<Either<MainFailure, DeleteAppoinmentsModel>> deleteAppoinments({
    required String id,
  });
}
