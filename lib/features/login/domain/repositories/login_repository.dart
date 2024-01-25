import 'package:dartz/dartz.dart';


import '../../../../core/failiar/main_failures.dart';
import '../../data/models/login_model.dart';

abstract class LoginRepository {
  Future<Either<MainFailure, LoginModel>> login({
    required String usernameOrMobile, required String password,
    required bool islogin
  });
}
