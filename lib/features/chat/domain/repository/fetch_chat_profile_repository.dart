import 'package:dartz/dartz.dart';


import '../../../../core/failiar/main_failures.dart';
import '../../data/model/chat_person_model.dart';

abstract class FetchChatProfileRepository {
  Future<Either<MainFailure, ChatProfileModel>> fetchChatProfile({
    required String id,
  });
}

