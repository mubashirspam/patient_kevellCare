// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appoinmets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppoinmetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppoinments,
    required TResult Function(AppoinmentsPayload appoinmentsPayload)
        createAppoinments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppoinments value) getAppoinments,
    required TResult Function(_CreateAppoinments value) createAppoinments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppoinmetsEventCopyWith<$Res> {
  factory $AppoinmetsEventCopyWith(
          AppoinmetsEvent value, $Res Function(AppoinmetsEvent) then) =
      _$AppoinmetsEventCopyWithImpl<$Res, AppoinmetsEvent>;
}

/// @nodoc
class _$AppoinmetsEventCopyWithImpl<$Res, $Val extends AppoinmetsEvent>
    implements $AppoinmetsEventCopyWith<$Res> {
  _$AppoinmetsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAppoinmentsCopyWith<$Res> {
  factory _$$_GetAppoinmentsCopyWith(
          _$_GetAppoinments value, $Res Function(_$_GetAppoinments) then) =
      __$$_GetAppoinmentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAppoinmentsCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$_GetAppoinments>
    implements _$$_GetAppoinmentsCopyWith<$Res> {
  __$$_GetAppoinmentsCopyWithImpl(
      _$_GetAppoinments _value, $Res Function(_$_GetAppoinments) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAppoinments implements _GetAppoinments {
  const _$_GetAppoinments();

  @override
  String toString() {
    return 'AppoinmetsEvent.getAppoinments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAppoinments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppoinments,
    required TResult Function(AppoinmentsPayload appoinmentsPayload)
        createAppoinments,
  }) {
    return getAppoinments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
  }) {
    return getAppoinments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    required TResult orElse(),
  }) {
    if (getAppoinments != null) {
      return getAppoinments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppoinments value) getAppoinments,
    required TResult Function(_CreateAppoinments value) createAppoinments,
  }) {
    return getAppoinments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
  }) {
    return getAppoinments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    required TResult orElse(),
  }) {
    if (getAppoinments != null) {
      return getAppoinments(this);
    }
    return orElse();
  }
}

abstract class _GetAppoinments implements AppoinmetsEvent {
  const factory _GetAppoinments() = _$_GetAppoinments;
}

/// @nodoc
abstract class _$$_CreateAppoinmentsCopyWith<$Res> {
  factory _$$_CreateAppoinmentsCopyWith(_$_CreateAppoinments value,
          $Res Function(_$_CreateAppoinments) then) =
      __$$_CreateAppoinmentsCopyWithImpl<$Res>;
  @useResult
  $Res call({AppoinmentsPayload appoinmentsPayload});
}

/// @nodoc
class __$$_CreateAppoinmentsCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$_CreateAppoinments>
    implements _$$_CreateAppoinmentsCopyWith<$Res> {
  __$$_CreateAppoinmentsCopyWithImpl(
      _$_CreateAppoinments _value, $Res Function(_$_CreateAppoinments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appoinmentsPayload = null,
  }) {
    return _then(_$_CreateAppoinments(
      appoinmentsPayload: null == appoinmentsPayload
          ? _value.appoinmentsPayload
          : appoinmentsPayload // ignore: cast_nullable_to_non_nullable
              as AppoinmentsPayload,
    ));
  }
}

/// @nodoc

class _$_CreateAppoinments implements _CreateAppoinments {
  const _$_CreateAppoinments({required this.appoinmentsPayload});

  @override
  final AppoinmentsPayload appoinmentsPayload;

  @override
  String toString() {
    return 'AppoinmetsEvent.createAppoinments(appoinmentsPayload: $appoinmentsPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAppoinments &&
            (identical(other.appoinmentsPayload, appoinmentsPayload) ||
                other.appoinmentsPayload == appoinmentsPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appoinmentsPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAppoinmentsCopyWith<_$_CreateAppoinments> get copyWith =>
      __$$_CreateAppoinmentsCopyWithImpl<_$_CreateAppoinments>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppoinments,
    required TResult Function(AppoinmentsPayload appoinmentsPayload)
        createAppoinments,
  }) {
    return createAppoinments(appoinmentsPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
  }) {
    return createAppoinments?.call(appoinmentsPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    required TResult orElse(),
  }) {
    if (createAppoinments != null) {
      return createAppoinments(appoinmentsPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppoinments value) getAppoinments,
    required TResult Function(_CreateAppoinments value) createAppoinments,
  }) {
    return createAppoinments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
  }) {
    return createAppoinments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    required TResult orElse(),
  }) {
    if (createAppoinments != null) {
      return createAppoinments(this);
    }
    return orElse();
  }
}

abstract class _CreateAppoinments implements AppoinmetsEvent {
  const factory _CreateAppoinments(
          {required final AppoinmentsPayload appoinmentsPayload}) =
      _$_CreateAppoinments;

  AppoinmentsPayload get appoinmentsPayload;
  @JsonKey(ignore: true)
  _$$_CreateAppoinmentsCopyWith<_$_CreateAppoinments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppoinmetsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get isCreateLoading => throw _privateConstructorUsedError;
  bool get createData => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  AppoimentModel? get appoimentData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppoinmetsStateCopyWith<AppoinmetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppoinmetsStateCopyWith<$Res> {
  factory $AppoinmetsStateCopyWith(
          AppoinmetsState value, $Res Function(AppoinmetsState) then) =
      _$AppoinmetsStateCopyWithImpl<$Res, AppoinmetsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasData,
      bool isCreateLoading,
      bool createData,
      bool isError,
      AppoimentModel? appoimentData});
}

/// @nodoc
class _$AppoinmetsStateCopyWithImpl<$Res, $Val extends AppoinmetsState>
    implements $AppoinmetsStateCopyWith<$Res> {
  _$AppoinmetsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasData = null,
    Object? isCreateLoading = null,
    Object? createData = null,
    Object? isError = null,
    Object? appoimentData = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreateLoading: null == isCreateLoading
          ? _value.isCreateLoading
          : isCreateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createData: null == createData
          ? _value.createData
          : createData // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      appoimentData: freezed == appoimentData
          ? _value.appoimentData
          : appoimentData // ignore: cast_nullable_to_non_nullable
              as AppoimentModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppoinmetsStateCopyWith<$Res>
    implements $AppoinmetsStateCopyWith<$Res> {
  factory _$$_AppoinmetsStateCopyWith(
          _$_AppoinmetsState value, $Res Function(_$_AppoinmetsState) then) =
      __$$_AppoinmetsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasData,
      bool isCreateLoading,
      bool createData,
      bool isError,
      AppoimentModel? appoimentData});
}

/// @nodoc
class __$$_AppoinmetsStateCopyWithImpl<$Res>
    extends _$AppoinmetsStateCopyWithImpl<$Res, _$_AppoinmetsState>
    implements _$$_AppoinmetsStateCopyWith<$Res> {
  __$$_AppoinmetsStateCopyWithImpl(
      _$_AppoinmetsState _value, $Res Function(_$_AppoinmetsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasData = null,
    Object? isCreateLoading = null,
    Object? createData = null,
    Object? isError = null,
    Object? appoimentData = freezed,
  }) {
    return _then(_$_AppoinmetsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreateLoading: null == isCreateLoading
          ? _value.isCreateLoading
          : isCreateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createData: null == createData
          ? _value.createData
          : createData // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      appoimentData: freezed == appoimentData
          ? _value.appoimentData
          : appoimentData // ignore: cast_nullable_to_non_nullable
              as AppoimentModel?,
    ));
  }
}

/// @nodoc

class _$_AppoinmetsState implements _AppoinmetsState {
  const _$_AppoinmetsState(
      {required this.isLoading,
      required this.hasData,
      required this.isCreateLoading,
      required this.createData,
      required this.isError,
      this.appoimentData});

  @override
  final bool isLoading;
  @override
  final bool hasData;
  @override
  final bool isCreateLoading;
  @override
  final bool createData;
  @override
  final bool isError;
  @override
  final AppoimentModel? appoimentData;

  @override
  String toString() {
    return 'AppoinmetsState(isLoading: $isLoading, hasData: $hasData, isCreateLoading: $isCreateLoading, createData: $createData, isError: $isError, appoimentData: $appoimentData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppoinmetsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.isCreateLoading, isCreateLoading) ||
                other.isCreateLoading == isCreateLoading) &&
            (identical(other.createData, createData) ||
                other.createData == createData) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.appoimentData, appoimentData) ||
                other.appoimentData == appoimentData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasData,
      isCreateLoading, createData, isError, appoimentData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppoinmetsStateCopyWith<_$_AppoinmetsState> get copyWith =>
      __$$_AppoinmetsStateCopyWithImpl<_$_AppoinmetsState>(this, _$identity);
}

abstract class _AppoinmetsState implements AppoinmetsState {
  const factory _AppoinmetsState(
      {required final bool isLoading,
      required final bool hasData,
      required final bool isCreateLoading,
      required final bool createData,
      required final bool isError,
      final AppoimentModel? appoimentData}) = _$_AppoinmetsState;

  @override
  bool get isLoading;
  @override
  bool get hasData;
  @override
  bool get isCreateLoading;
  @override
  bool get createData;
  @override
  bool get isError;
  @override
  AppoimentModel? get appoimentData;
  @override
  @JsonKey(ignore: true)
  _$$_AppoinmetsStateCopyWith<_$_AppoinmetsState> get copyWith =>
      throw _privateConstructorUsedError;
}
