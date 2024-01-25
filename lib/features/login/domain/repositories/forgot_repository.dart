import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/login/data/models/forgot_,model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class ForgotRepository {
  Future<Either<MainFailure, ForgotModel>> forgot({
    required String email,
  });
}
