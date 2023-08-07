import 'package:dartz/dartz.dart';

import '../../../../core/failiar/main_failures.dart';
import '../../data/models/otp_model.dart';

abstract class OtpRepository {
  Future<Either<MainFailure, OtpModel>> varifyOtp({
    required String otp,
    required String number,
  });
}
