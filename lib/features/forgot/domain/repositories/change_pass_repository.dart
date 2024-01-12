import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/forgot/data/model/change_password_model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class ChangePasswordRepository {
  Future<Either<MainFailure, ChangePasswordModel>> change({
    required String email,
  });
}
