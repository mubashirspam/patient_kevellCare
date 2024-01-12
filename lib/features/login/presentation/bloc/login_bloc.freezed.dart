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
    required TResult Function(String usernameOrMobile, String password) login,
    required TResult Function(String otp, String number) varyfiyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameOrMobile, String password)? login,
    TResult? Function(String otp, String number)? varyfiyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameOrMobile, String password)? login,
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
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameOrMobile, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameOrMobile = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      usernameOrMobile: null == usernameOrMobile
          ? _value.usernameOrMobile
          : usernameOrMobile // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.usernameOrMobile, required this.password});

  @override
  final String usernameOrMobile;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(usernameOrMobile: $usernameOrMobile, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.usernameOrMobile, usernameOrMobile) ||
                other.usernameOrMobile == usernameOrMobile) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameOrMobile, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameOrMobile, String password) login,
    required TResult Function(String otp, String number) varyfiyOtp,
  }) {
    return login(usernameOrMobile, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameOrMobile, String password)? login,
    TResult? Function(String otp, String number)? varyfiyOtp,
  }) {
    return login?.call(usernameOrMobile, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameOrMobile, String password)? login,
    TResult Function(String otp, String number)? varyfiyOtp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(usernameOrMobile, password);
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
  const factory _Login(
      {required final String usernameOrMobile,
      required final String password}) = _$LoginImpl;

  String get usernameOrMobile;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VaryfiyOtpImplCopyWith<$Res> {
  factory _$$VaryfiyOtpImplCopyWith(
          _$VaryfiyOtpImpl value, $Res Function(_$VaryfiyOtpImpl) then) =
      __$$VaryfiyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp, String number});
}

/// @nodoc
class __$$VaryfiyOtpImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$VaryfiyOtpImpl>
    implements _$$VaryfiyOtpImplCopyWith<$Res> {
  __$$VaryfiyOtpImplCopyWithImpl(
      _$VaryfiyOtpImpl _value, $Res Function(_$VaryfiyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? number = null,
  }) {
    return _then(_$VaryfiyOtpImpl(
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

class _$VaryfiyOtpImpl implements _VaryfiyOtp {
  const _$VaryfiyOtpImpl({required this.otp, required this.number});

  @override
  final String otp;
  @override
  final String number;

  @override
  String toString() {
    return 'LoginEvent.varyfiyOtp(otp: $otp, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaryfiyOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VaryfiyOtpImplCopyWith<_$VaryfiyOtpImpl> get copyWith =>
      __$$VaryfiyOtpImplCopyWithImpl<_$VaryfiyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameOrMobile, String password) login,
    required TResult Function(String otp, String number) varyfiyOtp,
  }) {
    return varyfiyOtp(otp, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameOrMobile, String password)? login,
    TResult? Function(String otp, String number)? varyfiyOtp,
  }) {
    return varyfiyOtp?.call(otp, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameOrMobile, String password)? login,
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
      required final String number}) = _$VaryfiyOtpImpl;

  String get otp;
  String get number;
  @JsonKey(ignore: true)
  _$$VaryfiyOtpImplCopyWith<_$VaryfiyOtpImpl> get copyWith =>
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
  OtpModel? get otpDetails => throw _privateConstructorUsedError;

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
      LoginModel? loginDetails,
      OtpModel? otpDetails});
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
    Object? otpDetails = freezed,
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
      otpDetails: freezed == otpDetails
          ? _value.otpDetails
          : otpDetails // ignore: cast_nullable_to_non_nullable
              as OtpModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String message,
      bool isError,
      bool otpVarified,
      bool hasValidationData,
      LoginModel? loginDetails,
      OtpModel? otpDetails});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
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
    Object? otpDetails = freezed,
  }) {
    return _then(_$LoginStateImpl(
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
      otpDetails: freezed == otpDetails
          ? _value.otpDetails
          : otpDetails // ignore: cast_nullable_to_non_nullable
              as OtpModel?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.isLoading,
      required this.message,
      required this.isError,
      required this.otpVarified,
      required this.hasValidationData,
      required this.loginDetails,
      required this.otpDetails});

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
  final OtpModel? otpDetails;

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, message: $message, isError: $isError, otpVarified: $otpVarified, hasValidationData: $hasValidationData, loginDetails: $loginDetails, otpDetails: $otpDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.otpVarified, otpVarified) ||
                other.otpVarified == otpVarified) &&
            (identical(other.hasValidationData, hasValidationData) ||
                other.hasValidationData == hasValidationData) &&
            (identical(other.loginDetails, loginDetails) ||
                other.loginDetails == loginDetails) &&
            (identical(other.otpDetails, otpDetails) ||
                other.otpDetails == otpDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, message, isError,
      otpVarified, hasValidationData, loginDetails, otpDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final bool isLoading,
      required final String message,
      required final bool isError,
      required final bool otpVarified,
      required final bool hasValidationData,
      required final LoginModel? loginDetails,
      required final OtpModel? otpDetails}) = _$LoginStateImpl;

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
  OtpModel? get otpDetails;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
