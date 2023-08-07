// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameOrMobile) login,
    required TResult Function(String otp, String number) varyfiyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameOrMobile)? login,
    TResult? Function(String otp, String number)? varyfiyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameOrMobile)? login,
    TResult Function(String otp, String number)? varyfiyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VaryfiyOtp value) varyfiyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VaryfiyOtp value)? varyfiyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VaryfiyOtp value)? varyfiyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameOrMobile});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameOrMobile = null,
  }) {
    return _then(_$_Login(
      usernameOrMobile: null == usernameOrMobile
          ? _value.usernameOrMobile
          : usernameOrMobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.usernameOrMobile});

  @override
  final String usernameOrMobile;

  @override
  String toString() {
    return 'LoginEvent.login(usernameOrMobile: $usernameOrMobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.usernameOrMobile, usernameOrMobile) ||
                other.usernameOrMobile == usernameOrMobile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameOrMobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameOrMobile) login,
    required TResult Function(String otp, String number) varyfiyOtp,
  }) {
    return login(usernameOrMobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameOrMobile)? login,
    TResult? Function(String otp, String number)? varyfiyOtp,
  }) {
    return login?.call(usernameOrMobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameOrMobile)? login,
    TResult Function(String otp, String number)? varyfiyOtp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(usernameOrMobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VaryfiyOtp value) varyfiyOtp,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VaryfiyOtp value)? varyfiyOtp,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VaryfiyOtp value)? varyfiyOtp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login({required final String usernameOrMobile}) = _$_Login;

  String get usernameOrMobile;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VaryfiyOtpCopyWith<$Res> {
  factory _$$_VaryfiyOtpCopyWith(
          _$_VaryfiyOtp value, $Res Function(_$_VaryfiyOtp) then) =
      __$$_VaryfiyOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp, String number});
}

/// @nodoc
class __$$_VaryfiyOtpCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_VaryfiyOtp>
    implements _$$_VaryfiyOtpCopyWith<$Res> {
  __$$_VaryfiyOtpCopyWithImpl(
      _$_VaryfiyOtp _value, $Res Function(_$_VaryfiyOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? number = null,
  }) {
    return _then(_$_VaryfiyOtp(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VaryfiyOtp implements _VaryfiyOtp {
  const _$_VaryfiyOtp({required this.otp, required this.number});

  @override
  final String otp;
  @override
  final String number;

  @override
  String toString() {
    return 'LoginEvent.varyfiyOtp(otp: $otp, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaryfiyOtp &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaryfiyOtpCopyWith<_$_VaryfiyOtp> get copyWith =>
      __$$_VaryfiyOtpCopyWithImpl<_$_VaryfiyOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameOrMobile) login,
    required TResult Function(String otp, String number) varyfiyOtp,
  }) {
    return varyfiyOtp(otp, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameOrMobile)? login,
    TResult? Function(String otp, String number)? varyfiyOtp,
  }) {
    return varyfiyOtp?.call(otp, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameOrMobile)? login,
    TResult Function(String otp, String number)? varyfiyOtp,
    required TResult orElse(),
  }) {
    if (varyfiyOtp != null) {
      return varyfiyOtp(otp, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VaryfiyOtp value) varyfiyOtp,
  }) {
    return varyfiyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VaryfiyOtp value)? varyfiyOtp,
  }) {
    return varyfiyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VaryfiyOtp value)? varyfiyOtp,
    required TResult orElse(),
  }) {
    if (varyfiyOtp != null) {
      return varyfiyOtp(this);
    }
    return orElse();
  }
}

abstract class _VaryfiyOtp implements LoginEvent {
  const factory _VaryfiyOtp(
      {required final String otp,
      required final String number}) = _$_VaryfiyOtp;

  String get otp;
  String get number;
  @JsonKey(ignore: true)
  _$$_VaryfiyOtpCopyWith<_$_VaryfiyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get otpVarified => throw _privateConstructorUsedError;
  bool get hasValidationData => throw _privateConstructorUsedError;
  LoginModel? get loginDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isError,
      bool otpVarified,
      bool hasValidationData,
      LoginModel? loginDetails});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
    Object? otpVarified = null,
    Object? hasValidationData = null,
    Object? loginDetails = freezed,
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
      otpVarified: null == otpVarified
          ? _value.otpVarified
          : otpVarified // ignore: cast_nullable_to_non_nullable
              as bool,
      hasValidationData: null == hasValidationData
          ? _value.hasValidationData
          : hasValidationData // ignore: cast_nullable_to_non_nullable
              as bool,
      loginDetails: freezed == loginDetails
          ? _value.loginDetails
          : loginDetails // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isError,
      bool otpVarified,
      bool hasValidationData,
      LoginModel? loginDetails});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = null,
    Object? isError = null,
    Object? otpVarified = null,
    Object? hasValidationData = null,
    Object? loginDetails = freezed,
  }) {
    return _then(_$_LoginState(
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
      otpVarified: null == otpVarified
          ? _value.otpVarified
          : otpVarified // ignore: cast_nullable_to_non_nullable
              as bool,
      hasValidationData: null == hasValidationData
          ? _value.hasValidationData
          : hasValidationData // ignore: cast_nullable_to_non_nullable
              as bool,
      loginDetails: freezed == loginDetails
          ? _value.loginDetails
          : loginDetails // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.isLoading,
      required this.message,
      required this.isError,
      required this.otpVarified,
      required this.hasValidationData,
      required this.loginDetails});

  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool isError;
  @override
  final bool otpVarified;
  @override
  final bool hasValidationData;
  @override
  final LoginModel? loginDetails;

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, message: $message, isError: $isError, otpVarified: $otpVarified, hasValidationData: $hasValidationData, loginDetails: $loginDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.otpVarified, otpVarified) ||
                other.otpVarified == otpVarified) &&
            (identical(other.hasValidationData, hasValidationData) ||
                other.hasValidationData == hasValidationData) &&
            (identical(other.loginDetails, loginDetails) ||
                other.loginDetails == loginDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, message, isError,
      otpVarified, hasValidationData, loginDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final bool isLoading,
      required final String message,
      required final bool isError,
      required final bool otpVarified,
      required final bool hasValidationData,
      required final LoginModel? loginDetails}) = _$_LoginState;

  @override
  bool get isLoading;
  @override
  String get message;
  @override
  bool get isError;
  @override
  bool get otpVarified;
  @override
  bool get hasValidationData;
  @override
  LoginModel? get loginDetails;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
