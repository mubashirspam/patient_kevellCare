// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeAvailableDoctor,
    required TResult Function(DateTime date, int scheduleId) pickDate,
    required TResult Function(DateTime startTime, DateTime endTime, int token)
        pickTime,
    required TResult Function(String location, String specialist) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAvailableDoctor,
    TResult? Function(DateTime date, int scheduleId)? pickDate,
    TResult? Function(DateTime startTime, DateTime endTime, int token)?
        pickTime,
    TResult? Function(String location, String specialist)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAvailableDoctor,
    TResult Function(DateTime date, int scheduleId)? pickDate,
    TResult Function(DateTime startTime, DateTime endTime, int token)? pickTime,
    TResult Function(String location, String specialist)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeAvailableDoctor value)
        getHomeAvailableDoctor,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_PickTime value) pickTime,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_PickTime value)? pickTime,
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_PickTime value)? pickTime,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeAvailableDoctorImplCopyWith<$Res> {
  factory _$$GetHomeAvailableDoctorImplCopyWith(
          _$GetHomeAvailableDoctorImpl value,
          $Res Function(_$GetHomeAvailableDoctorImpl) then) =
      __$$GetHomeAvailableDoctorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeAvailableDoctorImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeAvailableDoctorImpl>
    implements _$$GetHomeAvailableDoctorImplCopyWith<$Res> {
  __$$GetHomeAvailableDoctorImplCopyWithImpl(
      _$GetHomeAvailableDoctorImpl _value,
      $Res Function(_$GetHomeAvailableDoctorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeAvailableDoctorImpl implements _GetHomeAvailableDoctor {
  const _$GetHomeAvailableDoctorImpl();

  @override
  String toString() {
    return 'HomeEvent.getHomeAvailableDoctor()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeAvailableDoctorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeAvailableDoctor,
    required TResult Function(DateTime date, int scheduleId) pickDate,
    required TResult Function(DateTime startTime, DateTime endTime, int token)
        pickTime,
    required TResult Function(String location, String specialist) search,
  }) {
    return getHomeAvailableDoctor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAvailableDoctor,
    TResult? Function(DateTime date, int scheduleId)? pickDate,
    TResult? Function(DateTime startTime, DateTime endTime, int token)?
        pickTime,
    TResult? Function(String location, String specialist)? search,
  }) {
    return getHomeAvailableDoctor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAvailableDoctor,
    TResult Function(DateTime date, int scheduleId)? pickDate,
    TResult Function(DateTime startTime, DateTime endTime, int token)? pickTime,
    TResult Function(String location, String specialist)? search,
    required TResult orElse(),
  }) {
    if (getHomeAvailableDoctor != null) {
      return getHomeAvailableDoctor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeAvailableDoctor value)
        getHomeAvailableDoctor,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_PickTime value) pickTime,
    required TResult Function(_Search value) search,
  }) {
    return getHomeAvailableDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_PickTime value)? pickTime,
    TResult? Function(_Search value)? search,
  }) {
    return getHomeAvailableDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_PickTime value)? pickTime,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (getHomeAvailableDoctor != null) {
      return getHomeAvailableDoctor(this);
    }
    return orElse();
  }
}

abstract class _GetHomeAvailableDoctor implements HomeEvent {
  const factory _GetHomeAvailableDoctor() = _$GetHomeAvailableDoctorImpl;
}

/// @nodoc
abstract class _$$PickDateImplCopyWith<$Res> {
  factory _$$PickDateImplCopyWith(
          _$PickDateImpl value, $Res Function(_$PickDateImpl) then) =
      __$$PickDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date, int scheduleId});
}

/// @nodoc
class __$$PickDateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PickDateImpl>
    implements _$$PickDateImplCopyWith<$Res> {
  __$$PickDateImplCopyWithImpl(
      _$PickDateImpl _value, $Res Function(_$PickDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? scheduleId = null,
  }) {
    return _then(_$PickDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PickDateImpl implements _PickDate {
  const _$PickDateImpl({required this.date, required this.scheduleId});

  @override
  final DateTime date;
  @override
  final int scheduleId;

  @override
  String toString() {
    return 'HomeEvent.pickDate(date: $date, scheduleId: $scheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, scheduleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickDateImplCopyWith<_$PickDateImpl> get copyWith =>
      __$$PickDateImplCopyWithImpl<_$PickDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeAvailableDoctor,
    required TResult Function(DateTime date, int scheduleId) pickDate,
    required TResult Function(DateTime startTime, DateTime endTime, int token)
        pickTime,
    required TResult Function(String location, String specialist) search,
  }) {
    return pickDate(date, scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAvailableDoctor,
    TResult? Function(DateTime date, int scheduleId)? pickDate,
    TResult? Function(DateTime startTime, DateTime endTime, int token)?
        pickTime,
    TResult? Function(String location, String specialist)? search,
  }) {
    return pickDate?.call(date, scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAvailableDoctor,
    TResult Function(DateTime date, int scheduleId)? pickDate,
    TResult Function(DateTime startTime, DateTime endTime, int token)? pickTime,
    TResult Function(String location, String specialist)? search,
    required TResult orElse(),
  }) {
    if (pickDate != null) {
      return pickDate(date, scheduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeAvailableDoctor value)
        getHomeAvailableDoctor,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_PickTime value) pickTime,
    required TResult Function(_Search value) search,
  }) {
    return pickDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_PickTime value)? pickTime,
    TResult? Function(_Search value)? search,
  }) {
    return pickDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_PickTime value)? pickTime,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (pickDate != null) {
      return pickDate(this);
    }
    return orElse();
  }
}

abstract class _PickDate implements HomeEvent {
  const factory _PickDate(
      {required final DateTime date,
      required final int scheduleId}) = _$PickDateImpl;

  DateTime get date;
  int get scheduleId;
  @JsonKey(ignore: true)
  _$$PickDateImplCopyWith<_$PickDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickTimeImplCopyWith<$Res> {
  factory _$$PickTimeImplCopyWith(
          _$PickTimeImpl value, $Res Function(_$PickTimeImpl) then) =
      __$$PickTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startTime, DateTime endTime, int token});
}

/// @nodoc
class __$$PickTimeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PickTimeImpl>
    implements _$$PickTimeImplCopyWith<$Res> {
  __$$PickTimeImplCopyWithImpl(
      _$PickTimeImpl _value, $Res Function(_$PickTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? token = null,
  }) {
    return _then(_$PickTimeImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PickTimeImpl implements _PickTime {
  const _$PickTimeImpl(
      {required this.startTime, required this.endTime, required this.token});

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final int token;

  @override
  String toString() {
    return 'HomeEvent.pickTime(startTime: $startTime, endTime: $endTime, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickTimeImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickTimeImplCopyWith<_$PickTimeImpl> get copyWith =>
      __$$PickTimeImplCopyWithImpl<_$PickTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeAvailableDoctor,
    required TResult Function(DateTime date, int scheduleId) pickDate,
    required TResult Function(DateTime startTime, DateTime endTime, int token)
        pickTime,
    required TResult Function(String location, String specialist) search,
  }) {
    return pickTime(startTime, endTime, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAvailableDoctor,
    TResult? Function(DateTime date, int scheduleId)? pickDate,
    TResult? Function(DateTime startTime, DateTime endTime, int token)?
        pickTime,
    TResult? Function(String location, String specialist)? search,
  }) {
    return pickTime?.call(startTime, endTime, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAvailableDoctor,
    TResult Function(DateTime date, int scheduleId)? pickDate,
    TResult Function(DateTime startTime, DateTime endTime, int token)? pickTime,
    TResult Function(String location, String specialist)? search,
    required TResult orElse(),
  }) {
    if (pickTime != null) {
      return pickTime(startTime, endTime, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeAvailableDoctor value)
        getHomeAvailableDoctor,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_PickTime value) pickTime,
    required TResult Function(_Search value) search,
  }) {
    return pickTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_PickTime value)? pickTime,
    TResult? Function(_Search value)? search,
  }) {
    return pickTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_PickTime value)? pickTime,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (pickTime != null) {
      return pickTime(this);
    }
    return orElse();
  }
}

abstract class _PickTime implements HomeEvent {
  const factory _PickTime(
      {required final DateTime startTime,
      required final DateTime endTime,
      required final int token}) = _$PickTimeImpl;

  DateTime get startTime;
  DateTime get endTime;
  int get token;
  @JsonKey(ignore: true)
  _$$PickTimeImplCopyWith<_$PickTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location, String specialist});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? specialist = null,
  }) {
    return _then(_$SearchImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      specialist: null == specialist
          ? _value.specialist
          : specialist // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl({required this.location, required this.specialist});

  @override
  final String location;
  @override
  final String specialist;

  @override
  String toString() {
    return 'HomeEvent.search(location: $location, specialist: $specialist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.specialist, specialist) ||
                other.specialist == specialist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, specialist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeAvailableDoctor,
    required TResult Function(DateTime date, int scheduleId) pickDate,
    required TResult Function(DateTime startTime, DateTime endTime, int token)
        pickTime,
    required TResult Function(String location, String specialist) search,
  }) {
    return search(location, specialist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAvailableDoctor,
    TResult? Function(DateTime date, int scheduleId)? pickDate,
    TResult? Function(DateTime startTime, DateTime endTime, int token)?
        pickTime,
    TResult? Function(String location, String specialist)? search,
  }) {
    return search?.call(location, specialist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAvailableDoctor,
    TResult Function(DateTime date, int scheduleId)? pickDate,
    TResult Function(DateTime startTime, DateTime endTime, int token)? pickTime,
    TResult Function(String location, String specialist)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(location, specialist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeAvailableDoctor value)
        getHomeAvailableDoctor,
    required TResult Function(_PickDate value) pickDate,
    required TResult Function(_PickTime value) pickTime,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult? Function(_PickDate value)? pickDate,
    TResult? Function(_PickTime value)? pickTime,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    TResult Function(_PickDate value)? pickDate,
    TResult Function(_PickTime value)? pickTime,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements HomeEvent {
  const factory _Search(
      {required final String location,
      required final String specialist}) = _$SearchImpl;

  String get location;
  String get specialist;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get hasAvailableDoctorData => throw _privateConstructorUsedError;
  bool get isAvailableDoctorLoading => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  int? get token => throw _privateConstructorUsedError;
  int? get scheduleId => throw _privateConstructorUsedError;
  AvailableDoctorModel? get availableDoctors =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, AvailableDoctorModel>>
      get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool hasAvailableDoctorData,
      bool isAvailableDoctorLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      DateTime date,
      DateTime? startTime,
      DateTime? endTime,
      int? token,
      int? scheduleId,
      AvailableDoctorModel? availableDoctors,
      Option<Either<MainFailure, AvailableDoctorModel>>
          failureOrSuccessOption});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAvailableDoctorData = null,
    Object? isAvailableDoctorLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? date = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? token = freezed,
    Object? scheduleId = freezed,
    Object? availableDoctors = freezed,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      hasAvailableDoctorData: null == hasAvailableDoctorData
          ? _value.hasAvailableDoctorData
          : hasAvailableDoctorData // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailableDoctorLoading: null == isAvailableDoctorLoading
          ? _value.isAvailableDoctorLoading
          : isAvailableDoctorLoading // ignore: cast_nullable_to_non_nullable
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      availableDoctors: freezed == availableDoctors
          ? _value.availableDoctors
          : availableDoctors // ignore: cast_nullable_to_non_nullable
              as AvailableDoctorModel?,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, AvailableDoctorModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasAvailableDoctorData,
      bool isAvailableDoctorLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      DateTime date,
      DateTime? startTime,
      DateTime? endTime,
      int? token,
      int? scheduleId,
      AvailableDoctorModel? availableDoctors,
      Option<Either<MainFailure, AvailableDoctorModel>>
          failureOrSuccessOption});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAvailableDoctorData = null,
    Object? isAvailableDoctorLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? date = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? token = freezed,
    Object? scheduleId = freezed,
    Object? availableDoctors = freezed,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$HomeStateImpl(
      hasAvailableDoctorData: null == hasAvailableDoctorData
          ? _value.hasAvailableDoctorData
          : hasAvailableDoctorData // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailableDoctorLoading: null == isAvailableDoctorLoading
          ? _value.isAvailableDoctorLoading
          : isAvailableDoctorLoading // ignore: cast_nullable_to_non_nullable
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      availableDoctors: freezed == availableDoctors
          ? _value.availableDoctors
          : availableDoctors // ignore: cast_nullable_to_non_nullable
              as AvailableDoctorModel?,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, AvailableDoctorModel>>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.hasAvailableDoctorData,
      required this.isAvailableDoctorLoading,
      required this.unauthorized,
      required this.hasData,
      required this.isError,
      required this.date,
      required this.startTime,
      required this.endTime,
      required this.token,
      required this.scheduleId,
      this.availableDoctors,
      required this.failureOrSuccessOption});

  @override
  final bool hasAvailableDoctorData;
  @override
  final bool isAvailableDoctorLoading;
  @override
  final bool unauthorized;
  @override
  final bool hasData;
  @override
  final bool isError;
  @override
  final DateTime date;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final int? token;
  @override
  final int? scheduleId;
  @override
  final AvailableDoctorModel? availableDoctors;
  @override
  final Option<Either<MainFailure, AvailableDoctorModel>>
      failureOrSuccessOption;

  @override
  String toString() {
    return 'HomeState(hasAvailableDoctorData: $hasAvailableDoctorData, isAvailableDoctorLoading: $isAvailableDoctorLoading, unauthorized: $unauthorized, hasData: $hasData, isError: $isError, date: $date, startTime: $startTime, endTime: $endTime, token: $token, scheduleId: $scheduleId, availableDoctors: $availableDoctors, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.hasAvailableDoctorData, hasAvailableDoctorData) ||
                other.hasAvailableDoctorData == hasAvailableDoctorData) &&
            (identical(
                    other.isAvailableDoctorLoading, isAvailableDoctorLoading) ||
                other.isAvailableDoctorLoading == isAvailableDoctorLoading) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.availableDoctors, availableDoctors) ||
                other.availableDoctors == availableDoctors) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasAvailableDoctorData,
      isAvailableDoctorLoading,
      unauthorized,
      hasData,
      isError,
      date,
      startTime,
      endTime,
      token,
      scheduleId,
      availableDoctors,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool hasAvailableDoctorData,
      required final bool isAvailableDoctorLoading,
      required final bool unauthorized,
      required final bool hasData,
      required final bool isError,
      required final DateTime date,
      required final DateTime? startTime,
      required final DateTime? endTime,
      required final int? token,
      required final int? scheduleId,
      final AvailableDoctorModel? availableDoctors,
      required final Option<Either<MainFailure, AvailableDoctorModel>>
          failureOrSuccessOption}) = _$HomeStateImpl;

  @override
  bool get hasAvailableDoctorData;
  @override
  bool get isAvailableDoctorLoading;
  @override
  bool get unauthorized;
  @override
  bool get hasData;
  @override
  bool get isError;
  @override
  DateTime get date;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  int? get token;
  @override
  int? get scheduleId;
  @override
  AvailableDoctorModel? get availableDoctors;
  @override
  Option<Either<MainFailure, AvailableDoctorModel>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
