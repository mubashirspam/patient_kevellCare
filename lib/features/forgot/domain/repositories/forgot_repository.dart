import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/forgot/data/model/forgot_,model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class ForgotRepository {
  Future<Either<MainFailure, ForgotModel>> login({
    required String email,
  });
}
