import 'package:dartz/dartz.dart';


import '../../../../core/failiar/main_failures.dart';
import '../../data/models/profile_model.dart';

abstract class UpdateProfileRepository {
  Future<Either<MainFailure, ProfileModel>> updateProfile({
    required String name,
    required String dob,
    required String address,
    required String mobileNumber,
      required String street,
    required String city,
    required String district,
    required String zipcode,
    required String state,
        required String height,
    required String weight

  });
}
