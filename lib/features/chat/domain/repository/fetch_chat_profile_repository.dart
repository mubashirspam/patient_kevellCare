import 'package:dartz/dartz.dart';
import 'package:kevell_care/features/chat/data/model/chat_person_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class FetchChatProfileRepository {
  Future<Either<MainFailure, ChatPersonModel>> fetchChatProfile({
    required String id,
  });
}
