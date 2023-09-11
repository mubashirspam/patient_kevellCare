import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../data/models/profile_model.dart';
import '../../domain/repositories/get_profile_repository.dart';
import '../../domain/repositories/update_profile_repository.dart';
import '../../domain/repositories/upload_image_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileRepository getprofileRepository;
  final UpdateProfileRepository updateProfileRepository;
  final UploadImageRepository uploadImageRepository;

  ProfileBloc(
    this.getprofileRepository,
    this.updateProfileRepository,
    this.uploadImageRepository,
  ) : super(ProfileState.initial()) {
    on<_GetProfile>((event, emit) async {
      if (state.hasData) {
        return;
      }
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );

      final response = await getprofileRepository.getProfile();

      final result = response.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isLoading: false,
          hasData: true,
          result: success,
        ),
      );
      emit(result);
    });

    on<_PickDate>((event, emit) {
      emit(state.copyWith(
        date: event.date,
      ));
    });

    on<_UpdateProfile>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          hasData: false,
          isError: false,
        ),
      );

      final response = await updateProfileRepository.updateProfile(
        address: event.address,
        dob: event.dob,
        mobileNumber: event.mobileNumber,
        name: event.name,
      );

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isError: false,
            isUpdateLoading: false,
            result: success,
            hasData: true),
      );
      emit(result);
    });
    on<_UplaodImage>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          hasData: false,
          isError: false,
        ),
      );

      final response =
          await uploadImageRepository.uploaadImage(image: event.image);

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isError: false,
            isUpdateLoading: false,
            result: success,
            hasData: true),
      );
      emit(result);
    });
  }
}
