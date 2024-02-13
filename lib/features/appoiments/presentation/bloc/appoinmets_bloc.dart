import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/core/failiar/main_failures.dart';
import 'package:kevell_care/features/appoiments/data/models/appoiments_model.dart';
import 'package:kevell_care/features/appoiments/data/models/create_appoinment_resonse.dart';
import 'package:kevell_care/features/appoiments/domain/entities/create_appoinments.dart';
import 'package:kevell_care/features/appoiments/domain/repositories/create_appoinments_repository.dart';
import 'package:kevell_care/features/appoiments/domain/repositories/delete_appoinments_repository.dart';
import 'package:kevell_care/features/appoiments/domain/repositories/get_appoinments_repository.dart';
import 'package:kevell_care/features/appoiments/domain/repositories/update_appoinments_repository.dart';

import '../../data/models/delete_appoinments_model.dart';
import '../../data/models/update_appoinments_model.dart';
import '../../domain/entities/payment_payload.dart';
import '../../domain/entities/update_appoinments.dart';

part 'appoinmets_event.dart';
part 'appoinmets_state.dart';
part 'appoinmets_bloc.freezed.dart';

@injectable
class AppoinmetsBloc extends Bloc<AppoinmetsEvent, AppoinmetsState> {
  final GetAppoinmentsRepository getAppoinmentsRepository;
  final CreateAppoinmentsRepository createAppoinmentsRepository;
  final DeleteAppoinmentsRepository deleteAppoinmentsRepository;
  final UpdateAppoinmentsRepository updateAppoinmentsRepository;

  AppoinmetsBloc(
    this.getAppoinmentsRepository,
    this.createAppoinmentsRepository,
    this.deleteAppoinmentsRepository,
    this.updateAppoinmentsRepository,
  ) : super(AppoinmetsState.initial()) {
    on<_GetAppoinments>((event, emit) async {
      // if (state.hasData) {
      //   return;
      // }

      emit(
        state.copyWith(
          isLoading: true,
          isDeleted: false,
          isUpdated: false,
          createData: false,
          isError: false,
        ),
      );

      final response = await getAppoinmentsRepository.getAppoinments();

      final result = response.fold(
        (failure) => state.copyWith(
          isLoading: false,
          hasData: false,
          isError: true,
          failure: failure,
        ),
        (success) => state.copyWith(
            isError: false,
            isLoading: false,
            hasData: true,
            appoimentData: success),
      );
      emit(result);
    });

    on<_CreateAppoinments>((event, emit) async {
      emit(
        state.copyWith(
          isCreateLoading: true,
          createData: false,
          hasData: false,
          isError: false,
        ),
      );

      final response = await createAppoinmentsRepository.createAppoinments(
        appoinmentsPayload: event.appoinmentsPayload,
      );

      final result = response.fold(
        (failure) => state.copyWith(
          isCreateLoading: false,
          isError: true,
          createData: false,
        ),
        (success) => state.copyWith(
          isError: false,
          isCreateLoading: false,
          createData: true,
          createAppointmentData: success
        ),
      );
      emit(result);
    });

    on<_UpdateAppoinmets>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          hasData: false,
          isUpdated: false,
          isError: false,
        ),
      );

      final response = await updateAppoinmentsRepository.updateAppoinment(
          appoinmentsPayload: event.appoinmetsPayload);

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          isUpdated: false,
          hasData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isUpdateLoading: false,
          isUpdated: true,
          updateResponse: success,
          hasData: false,
        ),
      );
      emit(result);
    });

    on<_DeleteAppoinmets>((event, emit) async {
      emit(
        state.copyWith(
          isDeleteLoading: true,
          isDeleted: false,
          deleteResponse: null,
          isError: false,
        ),
      );

      final response =
          await deleteAppoinmentsRepository.deleteAppoinments(id: event.id);

      final result = response.fold(
        (failure) => state.copyWith(
          isDeleteLoading: false,
          isDeleted: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isDeleteLoading: false,
          isDeleted: true,
          deleteResponse: success,
        ),
      );
      emit(result);
    });
    on<_PickTime>((event, emit) {
      emit(state.copyWith(
        startTime: event.startTime,
        endTime: event.endTime,
      ));
    });
  }
}
