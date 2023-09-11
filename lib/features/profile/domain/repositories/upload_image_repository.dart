import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/failiar/main_failures.dart';
import '../../data/models/profile_model.dart';

abstract class UploadImageRepository {
  Future<Either<MainFailure, ProfileModel>> uploaadImage({
    required File image,
  });
}
