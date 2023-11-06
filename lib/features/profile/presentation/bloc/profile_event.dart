part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = _GetProfile;
  const factory ProfileEvent.updateProfile({
    required String name,
    required String dob,
    required String address,
    required String mobileNumber,
  }) = _UpdateProfile;

  const factory ProfileEvent.pickDate({
    required DateTime date,
  }) = _PickDate;
  const factory ProfileEvent.uplaodImage({
    required File image,
  }) = _UplaodImage;
}