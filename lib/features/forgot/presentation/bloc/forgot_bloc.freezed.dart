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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgot,
    required TResult Function(String otp, String cred) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgot,
    TResult? Function(String otp, String cred)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgot,
    TResult Function(String otp, String cred)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Forgot value) forgot,
    required TResult Function(_VaryfiyOtp value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Forgot value)? forgot,
    TResult? Function(_VaryfiyOtp value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Forgot value)? forgot,
    TResult Function(_VaryfiyOtp value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotEventCopyWith<$Res> {
  factory $ForgotEventCopyWith(
          ForgotEvent value, $Res Function(ForgotEvent) then) =
      _$ForgotEventCopyWithImpl<$Res, ForgotEvent>;
}

/// @nodoc
class _$ForgotEventCopyWithImpl<$Res, $Val extends ForgotEvent>
    implements $ForgotEventCopyWith<$Res> {
  _$ForgotEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ForgotImplCopyWith<$Res> {
  factory _$$ForgotImplCopyWith(
          _$ForgotImpl value, $Res Function(_$ForgotImpl) then) =
      __$$ForgotImplCopyWithImpl<$Res>;
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
  bool operator ==(Object other) {
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
    required TResult Function(String otp, String cred) change,
  }) {
    return forgot(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgot,
    TResult? Function(String otp, String cred)? change,
  }) {
    return forgot?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgot,
    TResult Function(String otp, String cred)? change,
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
    required TResult Function(_VaryfiyOtp value) change,
  }) {
    return forgot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Forgot value)? forgot,
    TResult? Function(_VaryfiyOtp value)? change,
  }) {
    return forgot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Forgot value)? forgot,
    TResult Function(_VaryfiyOtp value)? change,
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

  String get email;
  @JsonKey(ignore: true)
  _$$ForgotImplCopyWith<_$ForgotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VaryfiyOtpImplCopyWith<$Res> {
  factory _$$VaryfiyOtpImplCopyWith(
          _$VaryfiyOtpImpl value, $Res Function(_$VaryfiyOtpImpl) then) =
      __$$VaryfiyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp, String cred});
}

/// @nodoc
class __$$VaryfiyOtpImplCopyWithImpl<$Res>
    extends _$ForgotEventCopyWithImpl<$Res, _$VaryfiyOtpImpl>
    implements _$$VaryfiyOtpImplCopyWith<$Res> {
  __$$VaryfiyOtpImplCopyWithImpl(
      _$VaryfiyOtpImpl _value, $Res Function(_$VaryfiyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? cred = null,
  }) {
    return _then(_$VaryfiyOtpImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      cred: null == cred
          ? _value.cred
          : cred // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VaryfiyOtpImpl implements _VaryfiyOtp {
  const _$VaryfiyOtpImpl({required this.otp, required this.cred});

  @override
  final String otp;
  @override
  final String cred;

  @override
  String toString() {
    return 'ForgotEvent.change(otp: $otp, cred: $cred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaryfiyOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.cred, cred) || other.cred == cred));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, cred);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VaryfiyOtpImplCopyWith<_$VaryfiyOtpImpl> get copyWith =>
      __$$VaryfiyOtpImplCopyWithImpl<_$VaryfiyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) forgot,
    required TResult Function(String otp, String cred) change,
  }) {
    return change(otp, cred);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? forgot,
    TResult? Function(String otp, String cred)? change,
  }) {
    return change?.call(otp, cred);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? forgot,
    TResult Function(String otp, String cred)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(otp, cred);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Forgot value) forgot,
    required TResult Function(_VaryfiyOtp value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Forgot value)? forgot,
    TResult? Function(_VaryfiyOtp value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Forgot value)? forgot,
    TResult Function(_VaryfiyOtp value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _VaryfiyOtp implements ForgotEvent {
  const factory _VaryfiyOtp(
      {required final String otp,
      required final String cred}) = _$VaryfiyOtpImpl;

  String get otp;
  String get cred;
  @JsonKey(ignore: true)
  _$$VaryfiyOtpImplCopyWith<_$VaryfiyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  bool get otpVarified => throw _privateConstructorUsedError;
  ForgotModel? get forgot => throw _privateConstructorUsedError;
  ChangePasswordModel? get otp => throw _privateConstructorUsedError;

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
      bool otpVarified,
      ForgotModel? forgot,
      ChangePasswordModel? otp});
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
    Object? otpVarified = null,
    Object? forgot = freezed,
    Object? otp = freezed,
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
      otpVarified: null == otpVarified
          ? _value.otpVarified
          : otpVarified // ignore: cast_nullable_to_non_nullable
              as bool,
      forgot: freezed == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as ForgotModel?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as ChangePasswordModel?,
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
      bool otpVarified,
      ForgotModel? forgot,
      ChangePasswordModel? otp});
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
    Object? otpVarified = null,
    Object? forgot = freezed,
    Object? otp = freezed,
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
      otpVarified: null == otpVarified
          ? _value.otpVarified
          : otpVarified // ignore: cast_nullable_to_non_nullable
              as bool,
      forgot: freezed == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as ForgotModel?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as ChangePasswordModel?,
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
      required this.otpVarified,
      required this.forgot,
      required this.otp});

  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool isError;
  @override
  final bool hasData;
  @override
  final bool otpVarified;
  @override
  final ForgotModel? forgot;
  @override
  final ChangePasswordModel? otp;

  @override
  String toString() {
    return 'ForgotState(isLoading: $isLoading, message: $message, isError: $isError, hasData: $hasData, otpVarified: $otpVarified, forgot: $forgot, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.otpVarified, otpVarified) ||
                other.otpVarified == otpVarified) &&
            (identical(other.forgot, forgot) || other.forgot == forgot) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, message, isError,
      hasData, otpVarified, forgot, otp);

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
      required final bool otpVarified,
      required final ForgotModel? forgot,
      required final ChangePasswordModel? otp}) = _$ForgotStateImpl;

  @override
  bool get isLoading;
  @override
  String get message;
  @override
  bool get isError;
  @override
  bool get hasData;
  @override
  bool get otpVarified;
  @override
  ForgotModel? get forgot;
  @override
  ChangePasswordModel? get otp;
  @override
  @JsonKey(ignore: true)
  _$$ForgotStateImplCopyWith<_$ForgotStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
