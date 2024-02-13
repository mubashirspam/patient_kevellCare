part of 'appoinmets_bloc.dart';

@freezed
class AppoinmetsState with _$AppoinmetsState {
  const factory AppoinmetsState({
    required bool isLoading,
    required bool hasData,
    required bool isCreateLoading,
    required bool createData,
    required bool isError,
    AppoimentModel? appoimentData,
    CreateAppointment? createAppointmentData,
    required bool isUpdateLoading,
    required bool isDeleteLoading,
    required bool isDeleted,
    required bool isUpdated,
    required DateTime? startTime,
    required DateTime? endTime,
    required DeleteAppoinmentsModel? deleteResponse,
    required UpdateAppoinmentsModel? updateResponse,
    required MainFailure? failure,
    required PaymentStatus paymentStatus,
  }) = _AppoinmetsState;

  factory AppoinmetsState.initial() => const AppoinmetsState(
        isCreateLoading: false,
        isLoading: false,
        isError: false,
        hasData: false,
        createData: false,
        appoimentData: null,
        isDeleted: false,
        isDeleteLoading: false,
        isUpdateLoading: false,
        isUpdated: false,
        deleteResponse: null,
        updateResponse: null,
        createAppointmentData: null,
        endTime: null,
        startTime: null,
        paymentStatus: PaymentStatus.notCreated,
        failure: null,
      );
}

enum PaymentStatus { created, success, failed, notCreated }
