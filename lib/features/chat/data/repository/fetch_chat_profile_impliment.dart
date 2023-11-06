import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';
import 'package:kevell_care/configure/value/constant.dart';
import 'package:kevell_care/configure/value/secure_storage.dart';

import '../../../../configure/api/endpoints.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repository/fetch_chat_profile_repository.dart';
import '../model/chat_person_model.dart';

@LazySingleton(as: FetchChatProfileRepository)
class FetchChatProfileRepoImpliment implements FetchChatProfileRepository {
 
  @override
  Future<Either<MainFailure, ChatProfileModel>> fetchChatProfile({
    required String id,
  }) async {
      final ids = await getFromSS(drIdsecureStoreKey);
    try {
      final response = await Dio().get(ApiEndPoints.fetchChatProfile,
          queryParameters: {'patientId': ids});

      if (response.statusCode == 200) {
        final result = ChatProfileModel.fromJson(response.data);
      

       

        return Right(result);
      } else {
        log('Request failed with status: ${response.statusCode}');
        return const Left(MainFailure.noDatafound(message: "Error"));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure(message: ''));
    }
  }
}
