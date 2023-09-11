// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(
            String name, String dob, String address, String mobileNumber)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult Function(DateTime date)? pickDate,
    TResult Function(File image)? uplaodImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_UplaodImage value) uplaodImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_UplaodImage value)? uplaodImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_UplaodImage value)? uplaodImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetProfileCopyWith<$Res> {
  factory _$$_GetProfileCopyWith(
          _$_GetProfile value, $Res Function(_$_GetProfile) then) =
      __$$_GetProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_GetProfile>
    implements _$$_GetProfileCopyWith<$Res> {
  __$$_GetProfileCopyWithImpl(
      _$_GetProfile _value, $Res Function(_$_GetProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProfile implements _GetProfile {
  const _$_GetProfile();

  @override
  String toString() {
    return 'ProfileEvent.getProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(
            String name, String dob, String address, String mobileNumber)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult Function(DateTime date)? pickDate,
    TResult Function(File image)? uplaodImage,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_UplaodImage value) uplaodImage,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_UplaodImage value)? uplaodImage,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_UplaodImage value)? uplaodImage,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements ProfileEvent {
  const factory _GetProfile() = _$_GetProfile;
}

/// @nodoc
abstract class _$$_UpdateProfileCopyWith<$Res> {
  factory _$$_UpdateProfileCopyWith(
          _$_UpdateProfile value, $Res Function(_$_UpdateProfile) then) =
      __$$_UpdateProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String dob, String address, String mobileNumber});
}

/// @nodoc
class __$$_UpdateProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_UpdateProfile>
    implements _$$_UpdateProfileCopyWith<$Res> {
  __$$_UpdateProfileCopyWithImpl(
      _$_UpdateProfile _value, $Res Function(_$_UpdateProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dob = null,
    Object? address = null,
    Object? mobileNumber = null,
  }) {
    return _then(_$_UpdateProfile(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateProfile implements _UpdateProfile {
  const _$_UpdateProfile(
      {required this.name,
      required this.dob,
      required this.address,
      required this.mobileNumber});

  @override
  final String name;
  @override
  final String dob;
  @override
  final String address;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(name: $name, dob: $dob, address: $address, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfile &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, dob, address, mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileCopyWith<_$_UpdateProfile> get copyWith =>
      __$$_UpdateProfileCopyWithImpl<_$_UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(
            String name, String dob, String address, String mobileNumber)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) {
    return updateProfile(name, dob, address, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) {
    return updateProfile?.call(name, dob, address, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult Function(DateTime date)? pickDate,
    TResult Function(File image)? uplaodImage,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(name, dob, address, mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_UplaodImage value) uplaodImage,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_UplaodImage value)? uplaodImage,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_UplaodImage value)? uplaodImage,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements ProfileEvent {
  const factory _UpdateProfile(
      {required final String name,
      required final String dob,
      required final String address,
      required final String mobileNumber}) = _$_UpdateProfile;

  String get name;
  String get dob;
  String get address;
  String get mobileNumber;
  @JsonKey(ignore: true)
  _$$_UpdateProfileCopyWith<_$_UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickDateCopyWith<$Res> {
  factory _$$_PickDateCopyWith(
          _$_PickDate value, $Res Function(_$_PickDate) then) =
      __$$_PickDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_PickDateCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_PickDate>
    implements _$$_PickDateCopyWith<$Res> {
  __$$_PickDateCopyWithImpl(
      _$_PickDate _value, $Res Function(_$_PickDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_PickDate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PickDate implements _PickDate {
  const _$_PickDate({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ProfileEvent.pickDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickDateCopyWith<_$_PickDate> get copyWith =>
      __$$_PickDateCopyWithImpl<_$_PickDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(
            String name, String dob, String address, String mobileNumber)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) {
    return pickDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) {
    return pickDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult Function(DateTime date)? pickDate,
    TResult Function(File image)? uplaodImage,
    required TResult orElse(),
  }) {
    if (pickDate != null) {
      return pickDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_UplaodImage value) uplaodImage,
  }) {
    return pickDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_UplaodImage value)? uplaodImage,
  }) {
    return pickDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_UplaodImage value)? uplaodImage,
    required TResult orElse(),
  }) {
    if (pickDate != null) {
      return pickDate(this);
    }
    return orElse();
  }
}

abstract class _PickDate implements ProfileEvent {
  const factory _PickDate({required final DateTime date}) = _$_PickDate;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_PickDateCopyWith<_$_PickDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UplaodImageCopyWith<$Res> {
  factory _$$_UplaodImageCopyWith(
          _$_UplaodImage value, $Res Function(_$_UplaodImage) then) =
      __$$_UplaodImageCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$_UplaodImageCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_UplaodImage>
    implements _$$_UplaodImageCopyWith<$Res> {
  __$$_UplaodImageCopyWithImpl(
      _$_UplaodImage _value, $Res Function(_$_UplaodImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_UplaodImage(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UplaodImage implements _UplaodImage {
  const _$_UplaodImage({required this.image});

  @override
  final File image;

  @override
  String toString() {
    return 'ProfileEvent.uplaodImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UplaodImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UplaodImageCopyWith<_$_UplaodImage> get copyWith =>
      __$$_UplaodImageCopyWithImpl<_$_UplaodImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(
            String name, String dob, String address, String mobileNumber)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) {
    return uplaodImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) {
    return uplaodImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
            String name, String dob, String address, String mobileNumber)?
        updateProfile,
    TResult Function(DateTime date)? pickDate,
    TResult Function(File image)? uplaodImage,
    required TResult orElse(),
  }) {
    if (uplaodImage != null) {
      return uplaodImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_UplaodImage value) uplaodImage,
  }) {
    return uplaodImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_UplaodImage value)? uplaodImage,
  }) {
    return uplaodImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_UplaodImage value)? uplaodImage,
    required TResult orElse(),
  }) {
    if (uplaodImage != null) {
      return uplaodImage(this);
    }
    return orElse();
  }
}

abstract class _UplaodImage implements ProfileEvent {
  const factory _UplaodImage({required final File image}) = _$_UplaodImage;

  File get image;
  @JsonKey(ignore: true)
  _$$_UplaodImageCopyWith<_$_UplaodImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  ProfileModel? get result => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isUpdateLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      ProfileModel? result,
      DateTime date});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUpdateLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? result = freezed,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isUpdateLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      ProfileModel? result,
      DateTime date});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUpdateLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? result = freezed,
    Object? date = null,
  }) {
    return _then(_$_ProfileState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.isLoading,
      required this.isUpdateLoading,
      required this.unauthorized,
      required this.hasData,
      required this.isError,
      required this.result,
      required this.date});

  @override
  final bool isLoading;
  @override
  final bool isUpdateLoading;
  @override
  final bool unauthorized;
  @override
  final bool hasData;
  @override
  final bool isError;
  @override
  final ProfileModel? result;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, isUpdateLoading: $isUpdateLoading, unauthorized: $unauthorized, hasData: $hasData, isError: $isError, result: $result, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isUpdateLoading,
      unauthorized, hasData, isError, result, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final bool isLoading,
      required final bool isUpdateLoading,
      required final bool unauthorized,
      required final bool hasData,
      required final bool isError,
      required final ProfileModel? result,
      required final DateTime date}) = _$_ProfileState;

  @override
  bool get isLoading;
  @override
  bool get isUpdateLoading;
  @override
  bool get unauthorized;
  @override
  bool get hasData;
  @override
  bool get isError;
  @override
  ProfileModel? get result;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
