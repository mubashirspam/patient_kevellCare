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
    required TResult Function(int id) getProfile,
    required TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getProfile,
    TResult? Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getProfile,
    TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
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
abstract class _$$GetProfileImplCopyWith<$Res> {
  factory _$$GetProfileImplCopyWith(
          _$GetProfileImpl value, $Res Function(_$GetProfileImpl) then) =
      __$$GetProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileImpl>
    implements _$$GetProfileImplCopyWith<$Res> {
  __$$GetProfileImplCopyWithImpl(
      _$GetProfileImpl _value, $Res Function(_$GetProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetProfileImpl implements _GetProfile {
  const _$GetProfileImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.getProfile(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
      __$$GetProfileImplCopyWithImpl<_$GetProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getProfile,
    required TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) {
    return getProfile(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getProfile,
    TResult? Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) {
    return getProfile?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getProfile,
    TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
        updateProfile,
    TResult Function(DateTime date)? pickDate,
    TResult Function(File image)? uplaodImage,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(id);
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
  const factory _GetProfile({required final int id}) = _$GetProfileImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
          _$UpdateProfileImpl value, $Res Function(_$UpdateProfileImpl) then) =
      __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String dob,
      String address,
      String mobileNumber,
      String height,
      String weight,
      String street,
      String city,
      String district,
      String zipcode,
      String state});
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
      _$UpdateProfileImpl _value, $Res Function(_$UpdateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dob = null,
    Object? address = null,
    Object? mobileNumber = null,
    Object? height = null,
    Object? weight = null,
    Object? street = null,
    Object? city = null,
    Object? district = null,
    Object? zipcode = null,
    Object? state = null,
  }) {
    return _then(_$UpdateProfileImpl(
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
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileImpl implements _UpdateProfile {
  const _$UpdateProfileImpl(
      {required this.name,
      required this.dob,
      required this.address,
      required this.mobileNumber,
      required this.height,
      required this.weight,
      required this.street,
      required this.city,
      required this.district,
      required this.zipcode,
      required this.state});

  @override
  final String name;
  @override
  final String dob;
  @override
  final String address;
  @override
  final String mobileNumber;
  @override
  final String height;
  @override
  final String weight;
  @override
  final String street;
  @override
  final String city;
  @override
  final String district;
  @override
  final String zipcode;
  @override
  final String state;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(name: $name, dob: $dob, address: $address, mobileNumber: $mobileNumber, height: $height, weight: $weight, street: $street, city: $city, district: $district, zipcode: $zipcode, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, dob, address, mobileNumber,
      height, weight, street, city, district, zipcode, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getProfile,
    required TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) {
    return updateProfile(name, dob, address, mobileNumber, height, weight,
        street, city, district, zipcode, state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getProfile,
    TResult? Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) {
    return updateProfile?.call(name, dob, address, mobileNumber, height, weight,
        street, city, district, zipcode, state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getProfile,
    TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
        updateProfile,
    TResult Function(DateTime date)? pickDate,
    TResult Function(File image)? uplaodImage,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(name, dob, address, mobileNumber, height, weight,
          street, city, district, zipcode, state);
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
      required final String mobileNumber,
      required final String height,
      required final String weight,
      required final String street,
      required final String city,
      required final String district,
      required final String zipcode,
      required final String state}) = _$UpdateProfileImpl;

  String get name;
  String get dob;
  String get address;
  String get mobileNumber;
  String get height;
  String get weight;
  String get street;
  String get city;
  String get district;
  String get zipcode;
  String get state;
  @JsonKey(ignore: true)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickDateImplCopyWith<$Res> {
  factory _$$PickDateImplCopyWith(
          _$PickDateImpl value, $Res Function(_$PickDateImpl) then) =
      __$$PickDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$PickDateImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PickDateImpl>
    implements _$$PickDateImplCopyWith<$Res> {
  __$$PickDateImplCopyWithImpl(
      _$PickDateImpl _value, $Res Function(_$PickDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$PickDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PickDateImpl implements _PickDate {
  const _$PickDateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ProfileEvent.pickDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickDateImplCopyWith<_$PickDateImpl> get copyWith =>
      __$$PickDateImplCopyWithImpl<_$PickDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getProfile,
    required TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) {
    return pickDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getProfile,
    TResult? Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) {
    return pickDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getProfile,
    TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
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
  const factory _PickDate({required final DateTime date}) = _$PickDateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$PickDateImplCopyWith<_$PickDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UplaodImageImplCopyWith<$Res> {
  factory _$$UplaodImageImplCopyWith(
          _$UplaodImageImpl value, $Res Function(_$UplaodImageImpl) then) =
      __$$UplaodImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$UplaodImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UplaodImageImpl>
    implements _$$UplaodImageImplCopyWith<$Res> {
  __$$UplaodImageImplCopyWithImpl(
      _$UplaodImageImpl _value, $Res Function(_$UplaodImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$UplaodImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UplaodImageImpl implements _UplaodImage {
  const _$UplaodImageImpl({required this.image});

  @override
  final File image;

  @override
  String toString() {
    return 'ProfileEvent.uplaodImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UplaodImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UplaodImageImplCopyWith<_$UplaodImageImpl> get copyWith =>
      __$$UplaodImageImplCopyWithImpl<_$UplaodImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getProfile,
    required TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)
        updateProfile,
    required TResult Function(DateTime date) pickDate,
    required TResult Function(File image) uplaodImage,
  }) {
    return uplaodImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getProfile,
    TResult? Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
        updateProfile,
    TResult? Function(DateTime date)? pickDate,
    TResult? Function(File image)? uplaodImage,
  }) {
    return uplaodImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getProfile,
    TResult Function(
            String name,
            String dob,
            String address,
            String mobileNumber,
            String height,
            String weight,
            String street,
            String city,
            String district,
            String zipcode,
            String state)?
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
  const factory _UplaodImage({required final File image}) = _$UplaodImageImpl;

  File get image;
  @JsonKey(ignore: true)
  _$$UplaodImageImplCopyWith<_$UplaodImageImpl> get copyWith =>
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
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
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
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
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
    return _then(_$ProfileStateImpl(
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

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
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
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final bool isLoading,
      required final bool isUpdateLoading,
      required final bool unauthorized,
      required final bool hasData,
      required final bool isError,
      required final ProfileModel? result,
      required final DateTime date}) = _$ProfileStateImpl;

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
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
