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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAvailableDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAvailableDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeAvailableDoctor value)
        getHomeAvailableDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
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
abstract class _$$_GetHomeAvailableDoctorCopyWith<$Res> {
  factory _$$_GetHomeAvailableDoctorCopyWith(_$_GetHomeAvailableDoctor value,
          $Res Function(_$_GetHomeAvailableDoctor) then) =
      __$$_GetHomeAvailableDoctorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetHomeAvailableDoctorCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetHomeAvailableDoctor>
    implements _$$_GetHomeAvailableDoctorCopyWith<$Res> {
  __$$_GetHomeAvailableDoctorCopyWithImpl(_$_GetHomeAvailableDoctor _value,
      $Res Function(_$_GetHomeAvailableDoctor) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetHomeAvailableDoctor implements _GetHomeAvailableDoctor {
  const _$_GetHomeAvailableDoctor();

  @override
  String toString() {
    return 'HomeEvent.getHomeAvailableDoctor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetHomeAvailableDoctor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeAvailableDoctor,
  }) {
    return getHomeAvailableDoctor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeAvailableDoctor,
  }) {
    return getHomeAvailableDoctor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeAvailableDoctor,
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
  }) {
    return getHomeAvailableDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
  }) {
    return getHomeAvailableDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeAvailableDoctor value)? getHomeAvailableDoctor,
    required TResult orElse(),
  }) {
    if (getHomeAvailableDoctor != null) {
      return getHomeAvailableDoctor(this);
    }
    return orElse();
  }
}

abstract class _GetHomeAvailableDoctor implements HomeEvent {
  const factory _GetHomeAvailableDoctor() = _$_GetHomeAvailableDoctor;
}

/// @nodoc
mixin _$HomeState {
  bool get hasAvailableDoctorData => throw _privateConstructorUsedError;
  bool get isAvailableDoctorLoading => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  HomeAvailableDoctorModel? get availableDoctors =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, HomeAvailableDoctorModel>>
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
      HomeAvailableDoctorModel? availableDoctors,
      Option<Either<MainFailure, HomeAvailableDoctorModel>>
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
      availableDoctors: freezed == availableDoctors
          ? _value.availableDoctors
          : availableDoctors // ignore: cast_nullable_to_non_nullable
              as HomeAvailableDoctorModel?,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, HomeAvailableDoctorModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasAvailableDoctorData,
      bool isAvailableDoctorLoading,
      bool unauthorized,
      bool hasData,
      bool isError,
      HomeAvailableDoctorModel? availableDoctors,
      Option<Either<MainFailure, HomeAvailableDoctorModel>>
          failureOrSuccessOption});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAvailableDoctorData = null,
    Object? isAvailableDoctorLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? isError = null,
    Object? availableDoctors = freezed,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_HomeState(
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
      availableDoctors: freezed == availableDoctors
          ? _value.availableDoctors
          : availableDoctors // ignore: cast_nullable_to_non_nullable
              as HomeAvailableDoctorModel?,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, HomeAvailableDoctorModel>>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.hasAvailableDoctorData,
      required this.isAvailableDoctorLoading,
      required this.unauthorized,
      required this.hasData,
      required this.isError,
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
  final HomeAvailableDoctorModel? availableDoctors;
  @override
  final Option<Either<MainFailure, HomeAvailableDoctorModel>>
      failureOrSuccessOption;

  @override
  String toString() {
    return 'HomeState(hasAvailableDoctorData: $hasAvailableDoctorData, isAvailableDoctorLoading: $isAvailableDoctorLoading, unauthorized: $unauthorized, hasData: $hasData, isError: $isError, availableDoctors: $availableDoctors, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.hasAvailableDoctorData, hasAvailableDoctorData) ||
                other.hasAvailableDoctorData == hasAvailableDoctorData) &&
            (identical(
                    other.isAvailableDoctorLoading, isAvailableDoctorLoading) ||
                other.isAvailableDoctorLoading == isAvailableDoctorLoading) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.isError, isError) || other.isError == isError) &&
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
      availableDoctors,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool hasAvailableDoctorData,
      required final bool isAvailableDoctorLoading,
      required final bool unauthorized,
      required final bool hasData,
      required final bool isError,
      final HomeAvailableDoctorModel? availableDoctors,
      required final Option<Either<MainFailure, HomeAvailableDoctorModel>>
          failureOrSuccessOption}) = _$_HomeState;

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
  HomeAvailableDoctorModel? get availableDoctors;
  @override
  Option<Either<MainFailure, HomeAvailableDoctorModel>>
      get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
