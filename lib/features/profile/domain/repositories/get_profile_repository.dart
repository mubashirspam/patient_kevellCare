import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/models/profile_model.dart';

abstract class GetProfileRepository {
Future<Either<MainFailure, ProfileModel>> getProfile();
}
