import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/models/appoiments_model.dart';

abstract class GetAppoinmentsRepository {
  Future<Either<MainFailure, AppoimentModel>> getAppoinments();
}
