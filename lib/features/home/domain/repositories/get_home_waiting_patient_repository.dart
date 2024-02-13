import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/models/available_doctor_model.dart';

abstract class GetAvailableDoctorRepository {
  Future<Either<MainFailure, AvailableDoctorModel>> getHomeAvailableDoctor();
}
