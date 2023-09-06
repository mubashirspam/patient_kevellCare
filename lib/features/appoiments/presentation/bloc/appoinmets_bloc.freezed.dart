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
    required TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)
        updateAppoinments,
    required TResult Function(int id) deleteAppoinments,
    required TResult Function(DateTime startTime, DateTime endTime) pickTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult? Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult? Function(int id)? deleteAppoinments,
    TResult? Function(DateTime startTime, DateTime endTime)? pickTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult Function(int id)? deleteAppoinments,
    TResult Function(DateTime startTime, DateTime endTime)? pickTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppoinments value) getAppoinments,
    required TResult Function(_CreateAppoinments value) createAppoinments,
    required TResult Function(_UpdateAppoinmets value) updateAppoinments,
    required TResult Function(_DeleteAppoinmets value) deleteAppoinments,
    required TResult Function(_PickTime value) pickTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
    TResult? Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult? Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult? Function(_PickTime value)? pickTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    TResult Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult Function(_PickTime value)? pickTime,
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
    required TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)
        updateAppoinments,
    required TResult Function(int id) deleteAppoinments,
    required TResult Function(DateTime startTime, DateTime endTime) pickTime,
  }) {
    return getAppoinments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult? Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult? Function(int id)? deleteAppoinments,
    TResult? Function(DateTime startTime, DateTime endTime)? pickTime,
  }) {
    return getAppoinments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult Function(int id)? deleteAppoinments,
    TResult Function(DateTime startTime, DateTime endTime)? pickTime,
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
    required TResult Function(_UpdateAppoinmets value) updateAppoinments,
    required TResult Function(_DeleteAppoinmets value) deleteAppoinments,
    required TResult Function(_PickTime value) pickTime,
  }) {
    return getAppoinments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
    TResult? Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult? Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult? Function(_PickTime value)? pickTime,
  }) {
    return getAppoinments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    TResult Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult Function(_PickTime value)? pickTime,
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
    required TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)
        updateAppoinments,
    required TResult Function(int id) deleteAppoinments,
    required TResult Function(DateTime startTime, DateTime endTime) pickTime,
  }) {
    return createAppoinments(appoinmentsPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult? Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult? Function(int id)? deleteAppoinments,
    TResult? Function(DateTime startTime, DateTime endTime)? pickTime,
  }) {
    return createAppoinments?.call(appoinmentsPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult Function(int id)? deleteAppoinments,
    TResult Function(DateTime startTime, DateTime endTime)? pickTime,
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
    required TResult Function(_UpdateAppoinmets value) updateAppoinments,
    required TResult Function(_DeleteAppoinmets value) deleteAppoinments,
    required TResult Function(_PickTime value) pickTime,
  }) {
    return createAppoinments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
    TResult? Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult? Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult? Function(_PickTime value)? pickTime,
  }) {
    return createAppoinments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    TResult Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult Function(_PickTime value)? pickTime,
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
abstract class _$$_UpdateAppoinmetsCopyWith<$Res> {
  factory _$$_UpdateAppoinmetsCopyWith(
          _$_UpdateAppoinmets value, $Res Function(_$_UpdateAppoinmets) then) =
      __$$_UpdateAppoinmetsCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateAppoinmentsPayload appoinmetsPayload});
}

/// @nodoc
class __$$_UpdateAppoinmetsCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$_UpdateAppoinmets>
    implements _$$_UpdateAppoinmetsCopyWith<$Res> {
  __$$_UpdateAppoinmetsCopyWithImpl(
      _$_UpdateAppoinmets _value, $Res Function(_$_UpdateAppoinmets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appoinmetsPayload = null,
  }) {
    return _then(_$_UpdateAppoinmets(
      appoinmetsPayload: null == appoinmetsPayload
          ? _value.appoinmetsPayload
          : appoinmetsPayload // ignore: cast_nullable_to_non_nullable
              as UpdateAppoinmentsPayload,
    ));
  }
}

/// @nodoc

class _$_UpdateAppoinmets implements _UpdateAppoinmets {
  const _$_UpdateAppoinmets({required this.appoinmetsPayload});

  @override
  final UpdateAppoinmentsPayload appoinmetsPayload;

  @override
  String toString() {
    return 'AppoinmetsEvent.updateAppoinments(appoinmetsPayload: $appoinmetsPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAppoinmets &&
            (identical(other.appoinmetsPayload, appoinmetsPayload) ||
                other.appoinmetsPayload == appoinmetsPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appoinmetsPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAppoinmetsCopyWith<_$_UpdateAppoinmets> get copyWith =>
      __$$_UpdateAppoinmetsCopyWithImpl<_$_UpdateAppoinmets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppoinments,
    required TResult Function(AppoinmentsPayload appoinmentsPayload)
        createAppoinments,
    required TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)
        updateAppoinments,
    required TResult Function(int id) deleteAppoinments,
    required TResult Function(DateTime startTime, DateTime endTime) pickTime,
  }) {
    return updateAppoinments(appoinmetsPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult? Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult? Function(int id)? deleteAppoinments,
    TResult? Function(DateTime startTime, DateTime endTime)? pickTime,
  }) {
    return updateAppoinments?.call(appoinmetsPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult Function(int id)? deleteAppoinments,
    TResult Function(DateTime startTime, DateTime endTime)? pickTime,
    required TResult orElse(),
  }) {
    if (updateAppoinments != null) {
      return updateAppoinments(appoinmetsPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppoinments value) getAppoinments,
    required TResult Function(_CreateAppoinments value) createAppoinments,
    required TResult Function(_UpdateAppoinmets value) updateAppoinments,
    required TResult Function(_DeleteAppoinmets value) deleteAppoinments,
    required TResult Function(_PickTime value) pickTime,
  }) {
    return updateAppoinments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
    TResult? Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult? Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult? Function(_PickTime value)? pickTime,
  }) {
    return updateAppoinments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    TResult Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult Function(_PickTime value)? pickTime,
    required TResult orElse(),
  }) {
    if (updateAppoinments != null) {
      return updateAppoinments(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppoinmets implements AppoinmetsEvent {
  const factory _UpdateAppoinmets(
          {required final UpdateAppoinmentsPayload appoinmetsPayload}) =
      _$_UpdateAppoinmets;

  UpdateAppoinmentsPayload get appoinmetsPayload;
  @JsonKey(ignore: true)
  _$$_UpdateAppoinmetsCopyWith<_$_UpdateAppoinmets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteAppoinmetsCopyWith<$Res> {
  factory _$$_DeleteAppoinmetsCopyWith(
          _$_DeleteAppoinmets value, $Res Function(_$_DeleteAppoinmets) then) =
      __$$_DeleteAppoinmetsCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteAppoinmetsCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$_DeleteAppoinmets>
    implements _$$_DeleteAppoinmetsCopyWith<$Res> {
  __$$_DeleteAppoinmetsCopyWithImpl(
      _$_DeleteAppoinmets _value, $Res Function(_$_DeleteAppoinmets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteAppoinmets(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteAppoinmets implements _DeleteAppoinmets {
  const _$_DeleteAppoinmets({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'AppoinmetsEvent.deleteAppoinments(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAppoinmets &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAppoinmetsCopyWith<_$_DeleteAppoinmets> get copyWith =>
      __$$_DeleteAppoinmetsCopyWithImpl<_$_DeleteAppoinmets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppoinments,
    required TResult Function(AppoinmentsPayload appoinmentsPayload)
        createAppoinments,
    required TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)
        updateAppoinments,
    required TResult Function(int id) deleteAppoinments,
    required TResult Function(DateTime startTime, DateTime endTime) pickTime,
  }) {
    return deleteAppoinments(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult? Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult? Function(int id)? deleteAppoinments,
    TResult? Function(DateTime startTime, DateTime endTime)? pickTime,
  }) {
    return deleteAppoinments?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult Function(int id)? deleteAppoinments,
    TResult Function(DateTime startTime, DateTime endTime)? pickTime,
    required TResult orElse(),
  }) {
    if (deleteAppoinments != null) {
      return deleteAppoinments(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppoinments value) getAppoinments,
    required TResult Function(_CreateAppoinments value) createAppoinments,
    required TResult Function(_UpdateAppoinmets value) updateAppoinments,
    required TResult Function(_DeleteAppoinmets value) deleteAppoinments,
    required TResult Function(_PickTime value) pickTime,
  }) {
    return deleteAppoinments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
    TResult? Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult? Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult? Function(_PickTime value)? pickTime,
  }) {
    return deleteAppoinments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    TResult Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult Function(_PickTime value)? pickTime,
    required TResult orElse(),
  }) {
    if (deleteAppoinments != null) {
      return deleteAppoinments(this);
    }
    return orElse();
  }
}

abstract class _DeleteAppoinmets implements AppoinmetsEvent {
  const factory _DeleteAppoinmets({required final int id}) =
      _$_DeleteAppoinmets;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteAppoinmetsCopyWith<_$_DeleteAppoinmets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickTimeCopyWith<$Res> {
  factory _$$_PickTimeCopyWith(
          _$_PickTime value, $Res Function(_$_PickTime) then) =
      __$$_PickTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startTime, DateTime endTime});
}

/// @nodoc
class __$$_PickTimeCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$_PickTime>
    implements _$$_PickTimeCopyWith<$Res> {
  __$$_PickTimeCopyWithImpl(
      _$_PickTime _value, $Res Function(_$_PickTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$_PickTime(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PickTime implements _PickTime {
  const _$_PickTime({required this.startTime, required this.endTime});

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'AppoinmetsEvent.pickTime(startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickTime &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickTimeCopyWith<_$_PickTime> get copyWith =>
      __$$_PickTimeCopyWithImpl<_$_PickTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppoinments,
    required TResult Function(AppoinmentsPayload appoinmentsPayload)
        createAppoinments,
    required TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)
        updateAppoinments,
    required TResult Function(int id) deleteAppoinments,
    required TResult Function(DateTime startTime, DateTime endTime) pickTime,
  }) {
    return pickTime(startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppoinments,
    TResult? Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult? Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult? Function(int id)? deleteAppoinments,
    TResult? Function(DateTime startTime, DateTime endTime)? pickTime,
  }) {
    return pickTime?.call(startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppoinments,
    TResult Function(AppoinmentsPayload appoinmentsPayload)? createAppoinments,
    TResult Function(UpdateAppoinmentsPayload appoinmetsPayload)?
        updateAppoinments,
    TResult Function(int id)? deleteAppoinments,
    TResult Function(DateTime startTime, DateTime endTime)? pickTime,
    required TResult orElse(),
  }) {
    if (pickTime != null) {
      return pickTime(startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppoinments value) getAppoinments,
    required TResult Function(_CreateAppoinments value) createAppoinments,
    required TResult Function(_UpdateAppoinmets value) updateAppoinments,
    required TResult Function(_DeleteAppoinmets value) deleteAppoinments,
    required TResult Function(_PickTime value) pickTime,
  }) {
    return pickTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppoinments value)? getAppoinments,
    TResult? Function(_CreateAppoinments value)? createAppoinments,
    TResult? Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult? Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult? Function(_PickTime value)? pickTime,
  }) {
    return pickTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppoinments value)? getAppoinments,
    TResult Function(_CreateAppoinments value)? createAppoinments,
    TResult Function(_UpdateAppoinmets value)? updateAppoinments,
    TResult Function(_DeleteAppoinmets value)? deleteAppoinments,
    TResult Function(_PickTime value)? pickTime,
    required TResult orElse(),
  }) {
    if (pickTime != null) {
      return pickTime(this);
    }
    return orElse();
  }
}

abstract class _PickTime implements AppoinmetsEvent {
  const factory _PickTime(
      {required final DateTime startTime,
      required final DateTime endTime}) = _$_PickTime;

  DateTime get startTime;
  DateTime get endTime;
  @JsonKey(ignore: true)
  _$$_PickTimeCopyWith<_$_PickTime> get copyWith =>
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
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  bool get isUpdated => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  DeleteAppoinmentsModel? get deleteResponse =>
      throw _privateConstructorUsedError;
  UpdateAppoinmentsModel? get updateResponse =>
      throw _privateConstructorUsedError;

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
      AppoimentModel? appoimentData,
      bool isUpdateLoading,
      bool isDeleteLoading,
      bool isDeleted,
      bool isUpdated,
      DateTime? startTime,
      DateTime? endTime,
      DeleteAppoinmentsModel? deleteResponse,
      UpdateAppoinmentsModel? updateResponse});
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
    Object? isUpdateLoading = null,
    Object? isDeleteLoading = null,
    Object? isDeleted = null,
    Object? isUpdated = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? deleteResponse = freezed,
    Object? updateResponse = freezed,
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
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteLoading: null == isDeleteLoading
          ? _value.isDeleteLoading
          : isDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteResponse: freezed == deleteResponse
          ? _value.deleteResponse
          : deleteResponse // ignore: cast_nullable_to_non_nullable
              as DeleteAppoinmentsModel?,
      updateResponse: freezed == updateResponse
          ? _value.updateResponse
          : updateResponse // ignore: cast_nullable_to_non_nullable
              as UpdateAppoinmentsModel?,
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
      AppoimentModel? appoimentData,
      bool isUpdateLoading,
      bool isDeleteLoading,
      bool isDeleted,
      bool isUpdated,
      DateTime? startTime,
      DateTime? endTime,
      DeleteAppoinmentsModel? deleteResponse,
      UpdateAppoinmentsModel? updateResponse});
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
    Object? isUpdateLoading = null,
    Object? isDeleteLoading = null,
    Object? isDeleted = null,
    Object? isUpdated = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? deleteResponse = freezed,
    Object? updateResponse = freezed,
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
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteLoading: null == isDeleteLoading
          ? _value.isDeleteLoading
          : isDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteResponse: freezed == deleteResponse
          ? _value.deleteResponse
          : deleteResponse // ignore: cast_nullable_to_non_nullable
              as DeleteAppoinmentsModel?,
      updateResponse: freezed == updateResponse
          ? _value.updateResponse
          : updateResponse // ignore: cast_nullable_to_non_nullable
              as UpdateAppoinmentsModel?,
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
      this.appoimentData,
      required this.isUpdateLoading,
      required this.isDeleteLoading,
      required this.isDeleted,
      required this.isUpdated,
      required this.startTime,
      required this.endTime,
      required this.deleteResponse,
      required this.updateResponse});

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
  final bool isUpdateLoading;
  @override
  final bool isDeleteLoading;
  @override
  final bool isDeleted;
  @override
  final bool isUpdated;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final DeleteAppoinmentsModel? deleteResponse;
  @override
  final UpdateAppoinmentsModel? updateResponse;

  @override
  String toString() {
    return 'AppoinmetsState(isLoading: $isLoading, hasData: $hasData, isCreateLoading: $isCreateLoading, createData: $createData, isError: $isError, appoimentData: $appoimentData, isUpdateLoading: $isUpdateLoading, isDeleteLoading: $isDeleteLoading, isDeleted: $isDeleted, isUpdated: $isUpdated, startTime: $startTime, endTime: $endTime, deleteResponse: $deleteResponse, updateResponse: $updateResponse)';
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
                other.appoimentData == appoimentData) &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            (identical(other.isDeleteLoading, isDeleteLoading) ||
                other.isDeleteLoading == isDeleteLoading) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.deleteResponse, deleteResponse) ||
                other.deleteResponse == deleteResponse) &&
            (identical(other.updateResponse, updateResponse) ||
                other.updateResponse == updateResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasData,
      isCreateLoading,
      createData,
      isError,
      appoimentData,
      isUpdateLoading,
      isDeleteLoading,
      isDeleted,
      isUpdated,
      startTime,
      endTime,
      deleteResponse,
      updateResponse);

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
          final AppoimentModel? appoimentData,
          required final bool isUpdateLoading,
          required final bool isDeleteLoading,
          required final bool isDeleted,
          required final bool isUpdated,
          required final DateTime? startTime,
          required final DateTime? endTime,
          required final DeleteAppoinmentsModel? deleteResponse,
          required final UpdateAppoinmentsModel? updateResponse}) =
      _$_AppoinmetsState;

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
  bool get isUpdateLoading;
  @override
  bool get isDeleteLoading;
  @override
  bool get isDeleted;
  @override
  bool get isUpdated;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  DeleteAppoinmentsModel? get deleteResponse;
  @override
  UpdateAppoinmentsModel? get updateResponse;
  @override
  @JsonKey(ignore: true)
  _$$_AppoinmetsStateCopyWith<_$_AppoinmetsState> get copyWith =>
      throw _privateConstructorUsedError;
}
