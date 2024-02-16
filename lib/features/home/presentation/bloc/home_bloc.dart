import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/home/data/models/available_doctor_model.dart';
import 'package:kevell_care/features/home/domain/repositories/get_home_waiting_patient_repository.dart';

import '../../../../core/failiar/main_failures.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAvailableDoctorRepository getAvailableDoctorRepository;

  HomeBloc(
    this.getAvailableDoctorRepository,
  ) : super(HomeState.initial()) {
    on<_GetHomeAvailableDoctor>((event, emit) async {
      // if (state.hasAvailableDoctorData) {
      //   return;
      // }

      emit(
        state.copyWith(
          isAvailableDoctorLoading: true,
          isError: false,
          unauthorized: false,
          hasAvailableDoctorData: false,
        ),
      );

      final response =
          await getAvailableDoctorRepository.getHomeAvailableDoctor();

      response.fold(
          (failure) => {
                failure.maybeWhen(
                  clientFailure: (s) {
                    log('clientFailure');
                    return emit(state.copyWith(
                      unauthorized: false,
                      isAvailableDoctorLoading: false,
                      isError: true,
                      failureOrSuccessOption: some(Left(failure)),
                    ));
                  },
                  unauthorized: (String message) {
                    log('emit unauthorized');
                    return emit(state.copyWith(
                      isAvailableDoctorLoading: false,
                      unauthorized: true,
                      isError: true,
                      failureOrSuccessOption: some(Left(failure)),
                    ));
                  },
                  serverFailure: (s) {
                    log('emit serverFailure');
                    return emit(state.copyWith(
                      isAvailableDoctorLoading: false,
                      isError: true,
                      failureOrSuccessOption: some(Left(failure)),
                    ));
                  },
                  orElse: () {
                    log('emit orElse');
                    return emit(state.copyWith(
                      isAvailableDoctorLoading: false,
                      isError: true,
                      failureOrSuccessOption: some(Left(failure)),
                    ));
                  },
                )
              }, (success) {
        emit(
          state.copyWith(
            isError: false,
            isAvailableDoctorLoading: false,
            hasAvailableDoctorData: true,
            availableDoctors: success,
            failureOrSuccessOption: some(Right(success)),
          ),
        );
      });
    });

    on<_PickDate>((event, emit) {
      emit(state.copyWith(
        date: event.date,
        scheduleId: event.scheduleId,
      ));
    });

    on<_PickTime>((event, emit) {
      emit(state.copyWith(
          startTime: event.startTime,
          endTime: event.endTime,
          token: event.token));
    });

    on<_Search>((event, emit) {
      AvailableDoctorModel? availableDoctors = state.availableDoctors;

      if (availableDoctors != null) {
        List<AvailableDoctor>? list = availableDoctors.availableDoctors;

        if (list != null && list.isNotEmpty) {
          emit(state.copyWith(
            hasAvailableDoctorData: false,
          ));
          list = filterDoctorsBySpecialistAndLocation(
              list, event.specialist, event.location);

          AvailableDoctorModel updatedAvailableDoctors =
              availableDoctors.copyWith(availableDoctors: list);

          emit(state.copyWith(
              hasAvailableDoctorData: true,
              availableDoctors: updatedAvailableDoctors));
        }
      }
    });
  }
}

List<AvailableDoctor> filterDoctorsBySpecialistAndLocation(
  List<AvailableDoctor> doctorList,
  String specialist,
  String location,
) {
  return doctorList
      .where((doctor) =>
          doctor.specialist == specialist && doctor.location == location)
      .toList();
}
