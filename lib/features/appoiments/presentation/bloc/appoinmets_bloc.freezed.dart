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
abstract class _$$GetAppoinmentsImplCopyWith<$Res> {
  factory _$$GetAppoinmentsImplCopyWith(_$GetAppoinmentsImpl value,
          $Res Function(_$GetAppoinmentsImpl) then) =
      __$$GetAppoinmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAppoinmentsImplCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$GetAppoinmentsImpl>
    implements _$$GetAppoinmentsImplCopyWith<$Res> {
  __$$GetAppoinmentsImplCopyWithImpl(
      _$GetAppoinmentsImpl _value, $Res Function(_$GetAppoinmentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAppoinmentsImpl implements _GetAppoinments {
  const _$GetAppoinmentsImpl();

  @override
  String toString() {
    return 'AppoinmetsEvent.getAppoinments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAppoinmentsImpl);
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
  const factory _GetAppoinments() = _$GetAppoinmentsImpl;
}

/// @nodoc
abstract class _$$CreateAppoinmentsImplCopyWith<$Res> {
  factory _$$CreateAppoinmentsImplCopyWith(_$CreateAppoinmentsImpl value,
          $Res Function(_$CreateAppoinmentsImpl) then) =
      __$$CreateAppoinmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppoinmentsPayload appoinmentsPayload});
}

/// @nodoc
class __$$CreateAppoinmentsImplCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$CreateAppoinmentsImpl>
    implements _$$CreateAppoinmentsImplCopyWith<$Res> {
  __$$CreateAppoinmentsImplCopyWithImpl(_$CreateAppoinmentsImpl _value,
      $Res Function(_$CreateAppoinmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appoinmentsPayload = null,
  }) {
    return _then(_$CreateAppoinmentsImpl(
      appoinmentsPayload: null == appoinmentsPayload
          ? _value.appoinmentsPayload
          : appoinmentsPayload // ignore: cast_nullable_to_non_nullable
              as AppoinmentsPayload,
    ));
  }
}

/// @nodoc

class _$CreateAppoinmentsImpl implements _CreateAppoinments {
  const _$CreateAppoinmentsImpl({required this.appoinmentsPayload});

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
            other is _$CreateAppoinmentsImpl &&
            (identical(other.appoinmentsPayload, appoinmentsPayload) ||
                other.appoinmentsPayload == appoinmentsPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appoinmentsPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAppoinmentsImplCopyWith<_$CreateAppoinmentsImpl> get copyWith =>
      __$$CreateAppoinmentsImplCopyWithImpl<_$CreateAppoinmentsImpl>(
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
      _$CreateAppoinmentsImpl;

  AppoinmentsPayload get appoinmentsPayload;
  @JsonKey(ignore: true)
  _$$CreateAppoinmentsImplCopyWith<_$CreateAppoinmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAppoinmetsImplCopyWith<$Res> {
  factory _$$UpdateAppoinmetsImplCopyWith(_$UpdateAppoinmetsImpl value,
          $Res Function(_$UpdateAppoinmetsImpl) then) =
      __$$UpdateAppoinmetsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateAppoinmentsPayload appoinmetsPayload});
}

/// @nodoc
class __$$UpdateAppoinmetsImplCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$UpdateAppoinmetsImpl>
    implements _$$UpdateAppoinmetsImplCopyWith<$Res> {
  __$$UpdateAppoinmetsImplCopyWithImpl(_$UpdateAppoinmetsImpl _value,
      $Res Function(_$UpdateAppoinmetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appoinmetsPayload = null,
  }) {
    return _then(_$UpdateAppoinmetsImpl(
      appoinmetsPayload: null == appoinmetsPayload
          ? _value.appoinmetsPayload
          : appoinmetsPayload // ignore: cast_nullable_to_non_nullable
              as UpdateAppoinmentsPayload,
    ));
  }
}

/// @nodoc

class _$UpdateAppoinmetsImpl implements _UpdateAppoinmets {
  const _$UpdateAppoinmetsImpl({required this.appoinmetsPayload});

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
            other is _$UpdateAppoinmetsImpl &&
            (identical(other.appoinmetsPayload, appoinmetsPayload) ||
                other.appoinmetsPayload == appoinmetsPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appoinmetsPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppoinmetsImplCopyWith<_$UpdateAppoinmetsImpl> get copyWith =>
      __$$UpdateAppoinmetsImplCopyWithImpl<_$UpdateAppoinmetsImpl>(
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
      _$UpdateAppoinmetsImpl;

  UpdateAppoinmentsPayload get appoinmetsPayload;
  @JsonKey(ignore: true)
  _$$UpdateAppoinmetsImplCopyWith<_$UpdateAppoinmetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAppoinmetsImplCopyWith<$Res> {
  factory _$$DeleteAppoinmetsImplCopyWith(_$DeleteAppoinmetsImpl value,
          $Res Function(_$DeleteAppoinmetsImpl) then) =
      __$$DeleteAppoinmetsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteAppoinmetsImplCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$DeleteAppoinmetsImpl>
    implements _$$DeleteAppoinmetsImplCopyWith<$Res> {
  __$$DeleteAppoinmetsImplCopyWithImpl(_$DeleteAppoinmetsImpl _value,
      $Res Function(_$DeleteAppoinmetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteAppoinmetsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteAppoinmetsImpl implements _DeleteAppoinmets {
  const _$DeleteAppoinmetsImpl({required this.id});

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
            other is _$DeleteAppoinmetsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAppoinmetsImplCopyWith<_$DeleteAppoinmetsImpl> get copyWith =>
      __$$DeleteAppoinmetsImplCopyWithImpl<_$DeleteAppoinmetsImpl>(
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
      _$DeleteAppoinmetsImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteAppoinmetsImplCopyWith<_$DeleteAppoinmetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickTimeImplCopyWith<$Res> {
  factory _$$PickTimeImplCopyWith(
          _$PickTimeImpl value, $Res Function(_$PickTimeImpl) then) =
      __$$PickTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startTime, DateTime endTime});
}

/// @nodoc
class __$$PickTimeImplCopyWithImpl<$Res>
    extends _$AppoinmetsEventCopyWithImpl<$Res, _$PickTimeImpl>
    implements _$$PickTimeImplCopyWith<$Res> {
  __$$PickTimeImplCopyWithImpl(
      _$PickTimeImpl _value, $Res Function(_$PickTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
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
    ));
  }
}

/// @nodoc

class _$PickTimeImpl implements _PickTime {
  const _$PickTimeImpl({required this.startTime, required this.endTime});

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
            other is _$PickTimeImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickTimeImplCopyWith<_$PickTimeImpl> get copyWith =>
      __$$PickTimeImplCopyWithImpl<_$PickTimeImpl>(this, _$identity);

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
      required final DateTime endTime}) = _$PickTimeImpl;

  DateTime get startTime;
  DateTime get endTime;
  @JsonKey(ignore: true)
  _$$PickTimeImplCopyWith<_$PickTimeImpl> get copyWith =>
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
  MainFailure? get failure => throw _privateConstructorUsedError;

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
      UpdateAppoinmentsModel? updateResponse,
      MainFailure? failure});

  $MainFailureCopyWith<$Res>? get failure;
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
    Object? failure = freezed,
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
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $MainFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppoinmetsStateImplCopyWith<$Res>
    implements $AppoinmetsStateCopyWith<$Res> {
  factory _$$AppoinmetsStateImplCopyWith(_$AppoinmetsStateImpl value,
          $Res Function(_$AppoinmetsStateImpl) then) =
      __$$AppoinmetsStateImplCopyWithImpl<$Res>;
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
      UpdateAppoinmentsModel? updateResponse,
      MainFailure? failure});

  @override
  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$AppoinmetsStateImplCopyWithImpl<$Res>
    extends _$AppoinmetsStateCopyWithImpl<$Res, _$AppoinmetsStateImpl>
    implements _$$AppoinmetsStateImplCopyWith<$Res> {
  __$$AppoinmetsStateImplCopyWithImpl(
      _$AppoinmetsStateImpl _value, $Res Function(_$AppoinmetsStateImpl) _then)
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
    Object? failure = freezed,
  }) {
    return _then(_$AppoinmetsStateImpl(
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
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
    ));
  }
}

/// @nodoc

class _$AppoinmetsStateImpl implements _AppoinmetsState {
  const _$AppoinmetsStateImpl(
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
      required this.updateResponse,
      this.failure});

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
  final MainFailure? failure;

  @override
  String toString() {
    return 'AppoinmetsState(isLoading: $isLoading, hasData: $hasData, isCreateLoading: $isCreateLoading, createData: $createData, isError: $isError, appoimentData: $appoimentData, isUpdateLoading: $isUpdateLoading, isDeleteLoading: $isDeleteLoading, isDeleted: $isDeleted, isUpdated: $isUpdated, startTime: $startTime, endTime: $endTime, deleteResponse: $deleteResponse, updateResponse: $updateResponse, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppoinmetsStateImpl &&
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
                other.updateResponse == updateResponse) &&
            (identical(other.failure, failure) || other.failure == failure));
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
      updateResponse,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppoinmetsStateImplCopyWith<_$AppoinmetsStateImpl> get copyWith =>
      __$$AppoinmetsStateImplCopyWithImpl<_$AppoinmetsStateImpl>(
          this, _$identity);
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
      required final UpdateAppoinmentsModel? updateResponse,
      final MainFailure? failure}) = _$AppoinmetsStateImpl;

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
  MainFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$AppoinmetsStateImplCopyWith<_$AppoinmetsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
