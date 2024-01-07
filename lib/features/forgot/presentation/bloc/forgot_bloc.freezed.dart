// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Forgot value) forgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Forgot value)? forgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Forgot value)? forgot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotEventCopyWith<ForgotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotEventCopyWith<$Res> {
  factory $ForgotEventCopyWith(
          ForgotEvent value, $Res Function(ForgotEvent) then) =
      _$ForgotEventCopyWithImpl<$Res, ForgotEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotEventCopyWithImpl<$Res, $Val extends ForgotEvent>
    implements $ForgotEventCopyWith<$Res> {
  _$ForgotEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotImplCopyWith<$Res>
    implements $ForgotEventCopyWith<$Res> {
  factory _$$ForgotImplCopyWith(
          _$ForgotImpl value, $Res Function(_$ForgotImpl) then) =
      __$$ForgotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotImplCopyWithImpl<$Res>
    extends _$ForgotEventCopyWithImpl<$Res, _$ForgotImpl>
    implements _$$ForgotImplCopyWith<$Res> {
  __$$ForgotImplCopyWithImpl(
      _$ForgotImpl _value, $Res Function(_$ForgotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotImpl implements _Forgot {
  const _$ForgotImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotEvent.forgot(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotImplCopyWith<_$ForgotImpl> get copyWith =>
      __$$ForgotImplCopyWithImpl<_$ForgotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgot,
  }) {
    return forgot(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgot,
  }) {
    return forgot?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgot,
    required TResult orElse(),
  }) {
    if (forgot != null) {
      return forgot(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Forgot value) forgot,
  }) {
    return forgot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Forgot value)? forgot,
  }) {
    return forgot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Forgot value)? forgot,
    required TResult orElse(),
  }) {
    if (forgot != null) {
      return forgot(this);
    }
    return orElse();
  }
}

abstract class _Forgot implements ForgotEvent {
  const factory _Forgot({required final String email}) = _$ForgotImpl;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ForgotImplCopyWith<_$ForgotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  ForgotModel? get forgot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotStateCopyWith<ForgotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotStateCopyWith<$Res> {
  factory $ForgotStateCopyWith(
          ForgotState value, $Res Function(ForgotState) then) =
      _$ForgotStateCopyWithImpl<$Res, ForgotState>;
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isError,
      bool hasData,
      ForgotModel? forgot});
}

/// @nodoc
class _$ForgotStateCopyWithImpl<$Res, $Val extends ForgotState>
    implements $ForgotStateCopyWith<$Res> {
  _$ForgotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = null,
    Object? isError = null,
    Object? hasData = null,
    Object? forgot = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      forgot: freezed == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as ForgotModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotStateImplCopyWith<$Res>
    implements $ForgotStateCopyWith<$Res> {
  factory _$$ForgotStateImplCopyWith(
          _$ForgotStateImpl value, $Res Function(_$ForgotStateImpl) then) =
      __$$ForgotStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isError,
      bool hasData,
      ForgotModel? forgot});
}

/// @nodoc
class __$$ForgotStateImplCopyWithImpl<$Res>
    extends _$ForgotStateCopyWithImpl<$Res, _$ForgotStateImpl>
    implements _$$ForgotStateImplCopyWith<$Res> {
  __$$ForgotStateImplCopyWithImpl(
      _$ForgotStateImpl _value, $Res Function(_$ForgotStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = null,
    Object? isError = null,
    Object? hasData = null,
    Object? forgot = freezed,
  }) {
    return _then(_$ForgotStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      forgot: freezed == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as ForgotModel?,
    ));
  }
}

/// @nodoc

class _$ForgotStateImpl implements _ForgotState {
  const _$ForgotStateImpl(
      {required this.isLoading,
      required this.message,
      required this.isError,
      required this.hasData,
      required this.forgot});

  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool isError;
  @override
  final bool hasData;
  @override
  final ForgotModel? forgot;

  @override
  String toString() {
    return 'ForgotState(isLoading: $isLoading, message: $message, isError: $isError, hasData: $hasData, forgot: $forgot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.forgot, forgot) || other.forgot == forgot));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, message, isError, hasData, forgot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotStateImplCopyWith<_$ForgotStateImpl> get copyWith =>
      __$$ForgotStateImplCopyWithImpl<_$ForgotStateImpl>(this, _$identity);
}

abstract class _ForgotState implements ForgotState {
  const factory _ForgotState(
      {required final bool isLoading,
      required final String message,
      required final bool isError,
      required final bool hasData,
      required final ForgotModel? forgot}) = _$ForgotStateImpl;

  @override
  bool get isLoading;
  @override
  String get message;
  @override
  bool get isError;
  @override
  bool get hasData;
  @override
  ForgotModel? get forgot;
  @override
  @JsonKey(ignore: true)
  _$$ForgotStateImplCopyWith<_$ForgotStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
