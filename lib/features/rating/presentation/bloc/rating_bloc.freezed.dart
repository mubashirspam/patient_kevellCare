// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RatingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rating) buildRating,
    required TResult Function() getRating,
    required TResult Function(String rating, String reveiw) editRating,
    required TResult Function(CreateRatingPayload createRatingPayload)
        createrating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rating)? buildRating,
    TResult? Function()? getRating,
    TResult? Function(String rating, String reveiw)? editRating,
    TResult? Function(CreateRatingPayload createRatingPayload)? createrating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rating)? buildRating,
    TResult Function()? getRating,
    TResult Function(String rating, String reveiw)? editRating,
    TResult Function(CreateRatingPayload createRatingPayload)? createrating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuildRating value) buildRating,
    required TResult Function(_GetRating value) getRating,
    required TResult Function(_EditRating value) editRating,
    required TResult Function(_CreateRating value) createrating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuildRating value)? buildRating,
    TResult? Function(_GetRating value)? getRating,
    TResult? Function(_EditRating value)? editRating,
    TResult? Function(_CreateRating value)? createrating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuildRating value)? buildRating,
    TResult Function(_GetRating value)? getRating,
    TResult Function(_EditRating value)? editRating,
    TResult Function(_CreateRating value)? createrating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingEventCopyWith<$Res> {
  factory $RatingEventCopyWith(
          RatingEvent value, $Res Function(RatingEvent) then) =
      _$RatingEventCopyWithImpl<$Res, RatingEvent>;
}

/// @nodoc
class _$RatingEventCopyWithImpl<$Res, $Val extends RatingEvent>
    implements $RatingEventCopyWith<$Res> {
  _$RatingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BuildRatingImplCopyWith<$Res> {
  factory _$$BuildRatingImplCopyWith(
          _$BuildRatingImpl value, $Res Function(_$BuildRatingImpl) then) =
      __$$BuildRatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int rating});
}

/// @nodoc
class __$$BuildRatingImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$BuildRatingImpl>
    implements _$$BuildRatingImplCopyWith<$Res> {
  __$$BuildRatingImplCopyWithImpl(
      _$BuildRatingImpl _value, $Res Function(_$BuildRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_$BuildRatingImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BuildRatingImpl implements _BuildRating {
  const _$BuildRatingImpl({required this.rating});

  @override
  final int rating;

  @override
  String toString() {
    return 'RatingEvent.buildRating(rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildRatingImpl &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildRatingImplCopyWith<_$BuildRatingImpl> get copyWith =>
      __$$BuildRatingImplCopyWithImpl<_$BuildRatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rating) buildRating,
    required TResult Function() getRating,
    required TResult Function(String rating, String reveiw) editRating,
    required TResult Function(CreateRatingPayload createRatingPayload)
        createrating,
  }) {
    return buildRating(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rating)? buildRating,
    TResult? Function()? getRating,
    TResult? Function(String rating, String reveiw)? editRating,
    TResult? Function(CreateRatingPayload createRatingPayload)? createrating,
  }) {
    return buildRating?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rating)? buildRating,
    TResult Function()? getRating,
    TResult Function(String rating, String reveiw)? editRating,
    TResult Function(CreateRatingPayload createRatingPayload)? createrating,
    required TResult orElse(),
  }) {
    if (buildRating != null) {
      return buildRating(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuildRating value) buildRating,
    required TResult Function(_GetRating value) getRating,
    required TResult Function(_EditRating value) editRating,
    required TResult Function(_CreateRating value) createrating,
  }) {
    return buildRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuildRating value)? buildRating,
    TResult? Function(_GetRating value)? getRating,
    TResult? Function(_EditRating value)? editRating,
    TResult? Function(_CreateRating value)? createrating,
  }) {
    return buildRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuildRating value)? buildRating,
    TResult Function(_GetRating value)? getRating,
    TResult Function(_EditRating value)? editRating,
    TResult Function(_CreateRating value)? createrating,
    required TResult orElse(),
  }) {
    if (buildRating != null) {
      return buildRating(this);
    }
    return orElse();
  }
}

abstract class _BuildRating implements RatingEvent {
  const factory _BuildRating({required final int rating}) = _$BuildRatingImpl;

  int get rating;
  @JsonKey(ignore: true)
  _$$BuildRatingImplCopyWith<_$BuildRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRatingImplCopyWith<$Res> {
  factory _$$GetRatingImplCopyWith(
          _$GetRatingImpl value, $Res Function(_$GetRatingImpl) then) =
      __$$GetRatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRatingImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$GetRatingImpl>
    implements _$$GetRatingImplCopyWith<$Res> {
  __$$GetRatingImplCopyWithImpl(
      _$GetRatingImpl _value, $Res Function(_$GetRatingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRatingImpl implements _GetRating {
  const _$GetRatingImpl();

  @override
  String toString() {
    return 'RatingEvent.getRating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rating) buildRating,
    required TResult Function() getRating,
    required TResult Function(String rating, String reveiw) editRating,
    required TResult Function(CreateRatingPayload createRatingPayload)
        createrating,
  }) {
    return getRating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rating)? buildRating,
    TResult? Function()? getRating,
    TResult? Function(String rating, String reveiw)? editRating,
    TResult? Function(CreateRatingPayload createRatingPayload)? createrating,
  }) {
    return getRating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rating)? buildRating,
    TResult Function()? getRating,
    TResult Function(String rating, String reveiw)? editRating,
    TResult Function(CreateRatingPayload createRatingPayload)? createrating,
    required TResult orElse(),
  }) {
    if (getRating != null) {
      return getRating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuildRating value) buildRating,
    required TResult Function(_GetRating value) getRating,
    required TResult Function(_EditRating value) editRating,
    required TResult Function(_CreateRating value) createrating,
  }) {
    return getRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuildRating value)? buildRating,
    TResult? Function(_GetRating value)? getRating,
    TResult? Function(_EditRating value)? editRating,
    TResult? Function(_CreateRating value)? createrating,
  }) {
    return getRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuildRating value)? buildRating,
    TResult Function(_GetRating value)? getRating,
    TResult Function(_EditRating value)? editRating,
    TResult Function(_CreateRating value)? createrating,
    required TResult orElse(),
  }) {
    if (getRating != null) {
      return getRating(this);
    }
    return orElse();
  }
}

abstract class _GetRating implements RatingEvent {
  const factory _GetRating() = _$GetRatingImpl;
}

/// @nodoc
abstract class _$$EditRatingImplCopyWith<$Res> {
  factory _$$EditRatingImplCopyWith(
          _$EditRatingImpl value, $Res Function(_$EditRatingImpl) then) =
      __$$EditRatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rating, String reveiw});
}

/// @nodoc
class __$$EditRatingImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$EditRatingImpl>
    implements _$$EditRatingImplCopyWith<$Res> {
  __$$EditRatingImplCopyWithImpl(
      _$EditRatingImpl _value, $Res Function(_$EditRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? reveiw = null,
  }) {
    return _then(_$EditRatingImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      reveiw: null == reveiw
          ? _value.reveiw
          : reveiw // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditRatingImpl implements _EditRating {
  const _$EditRatingImpl({required this.rating, required this.reveiw});

  @override
  final String rating;
  @override
  final String reveiw;

  @override
  String toString() {
    return 'RatingEvent.editRating(rating: $rating, reveiw: $reveiw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRatingImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reveiw, reveiw) || other.reveiw == reveiw));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating, reveiw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRatingImplCopyWith<_$EditRatingImpl> get copyWith =>
      __$$EditRatingImplCopyWithImpl<_$EditRatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rating) buildRating,
    required TResult Function() getRating,
    required TResult Function(String rating, String reveiw) editRating,
    required TResult Function(CreateRatingPayload createRatingPayload)
        createrating,
  }) {
    return editRating(rating, reveiw);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rating)? buildRating,
    TResult? Function()? getRating,
    TResult? Function(String rating, String reveiw)? editRating,
    TResult? Function(CreateRatingPayload createRatingPayload)? createrating,
  }) {
    return editRating?.call(rating, reveiw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rating)? buildRating,
    TResult Function()? getRating,
    TResult Function(String rating, String reveiw)? editRating,
    TResult Function(CreateRatingPayload createRatingPayload)? createrating,
    required TResult orElse(),
  }) {
    if (editRating != null) {
      return editRating(rating, reveiw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuildRating value) buildRating,
    required TResult Function(_GetRating value) getRating,
    required TResult Function(_EditRating value) editRating,
    required TResult Function(_CreateRating value) createrating,
  }) {
    return editRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuildRating value)? buildRating,
    TResult? Function(_GetRating value)? getRating,
    TResult? Function(_EditRating value)? editRating,
    TResult? Function(_CreateRating value)? createrating,
  }) {
    return editRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuildRating value)? buildRating,
    TResult Function(_GetRating value)? getRating,
    TResult Function(_EditRating value)? editRating,
    TResult Function(_CreateRating value)? createrating,
    required TResult orElse(),
  }) {
    if (editRating != null) {
      return editRating(this);
    }
    return orElse();
  }
}

abstract class _EditRating implements RatingEvent {
  const factory _EditRating(
      {required final String rating,
      required final String reveiw}) = _$EditRatingImpl;

  String get rating;
  String get reveiw;
  @JsonKey(ignore: true)
  _$$EditRatingImplCopyWith<_$EditRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRatingImplCopyWith<$Res> {
  factory _$$CreateRatingImplCopyWith(
          _$CreateRatingImpl value, $Res Function(_$CreateRatingImpl) then) =
      __$$CreateRatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateRatingPayload createRatingPayload});
}

/// @nodoc
class __$$CreateRatingImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$CreateRatingImpl>
    implements _$$CreateRatingImplCopyWith<$Res> {
  __$$CreateRatingImplCopyWithImpl(
      _$CreateRatingImpl _value, $Res Function(_$CreateRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createRatingPayload = null,
  }) {
    return _then(_$CreateRatingImpl(
      createRatingPayload: null == createRatingPayload
          ? _value.createRatingPayload
          : createRatingPayload // ignore: cast_nullable_to_non_nullable
              as CreateRatingPayload,
    ));
  }
}

/// @nodoc

class _$CreateRatingImpl implements _CreateRating {
  const _$CreateRatingImpl({required this.createRatingPayload});

  @override
  final CreateRatingPayload createRatingPayload;

  @override
  String toString() {
    return 'RatingEvent.createrating(createRatingPayload: $createRatingPayload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRatingImpl &&
            (identical(other.createRatingPayload, createRatingPayload) ||
                other.createRatingPayload == createRatingPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createRatingPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRatingImplCopyWith<_$CreateRatingImpl> get copyWith =>
      __$$CreateRatingImplCopyWithImpl<_$CreateRatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int rating) buildRating,
    required TResult Function() getRating,
    required TResult Function(String rating, String reveiw) editRating,
    required TResult Function(CreateRatingPayload createRatingPayload)
        createrating,
  }) {
    return createrating(createRatingPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int rating)? buildRating,
    TResult? Function()? getRating,
    TResult? Function(String rating, String reveiw)? editRating,
    TResult? Function(CreateRatingPayload createRatingPayload)? createrating,
  }) {
    return createrating?.call(createRatingPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int rating)? buildRating,
    TResult Function()? getRating,
    TResult Function(String rating, String reveiw)? editRating,
    TResult Function(CreateRatingPayload createRatingPayload)? createrating,
    required TResult orElse(),
  }) {
    if (createrating != null) {
      return createrating(createRatingPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuildRating value) buildRating,
    required TResult Function(_GetRating value) getRating,
    required TResult Function(_EditRating value) editRating,
    required TResult Function(_CreateRating value) createrating,
  }) {
    return createrating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuildRating value)? buildRating,
    TResult? Function(_GetRating value)? getRating,
    TResult? Function(_EditRating value)? editRating,
    TResult? Function(_CreateRating value)? createrating,
  }) {
    return createrating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuildRating value)? buildRating,
    TResult Function(_GetRating value)? getRating,
    TResult Function(_EditRating value)? editRating,
    TResult Function(_CreateRating value)? createrating,
    required TResult orElse(),
  }) {
    if (createrating != null) {
      return createrating(this);
    }
    return orElse();
  }
}

abstract class _CreateRating implements RatingEvent {
  const factory _CreateRating(
          {required final CreateRatingPayload createRatingPayload}) =
      _$CreateRatingImpl;

  CreateRatingPayload get createRatingPayload;
  @JsonKey(ignore: true)
  _$$CreateRatingImplCopyWith<_$CreateRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RatingState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  RatingModel? get ratingDetails => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ratingcount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingStateCopyWith<RatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingStateCopyWith<$Res> {
  factory $RatingStateCopyWith(
          RatingState value, $Res Function(RatingState) then) =
      _$RatingStateCopyWithImpl<$Res, RatingState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isUpdateLoading,
      bool unauthorized,
      bool hasData,
      RatingModel? ratingDetails,
      String? message,
      int? ratingcount});
}

/// @nodoc
class _$RatingStateCopyWithImpl<$Res, $Val extends RatingState>
    implements $RatingStateCopyWith<$Res> {
  _$RatingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isUpdateLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? ratingDetails = freezed,
    Object? message = freezed,
    Object? ratingcount = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
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
      ratingDetails: freezed == ratingDetails
          ? _value.ratingDetails
          : ratingDetails // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingcount: freezed == ratingcount
          ? _value.ratingcount
          : ratingcount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingStateImplCopyWith<$Res>
    implements $RatingStateCopyWith<$Res> {
  factory _$$RatingStateImplCopyWith(
          _$RatingStateImpl value, $Res Function(_$RatingStateImpl) then) =
      __$$RatingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isUpdateLoading,
      bool unauthorized,
      bool hasData,
      RatingModel? ratingDetails,
      String? message,
      int? ratingcount});
}

/// @nodoc
class __$$RatingStateImplCopyWithImpl<$Res>
    extends _$RatingStateCopyWithImpl<$Res, _$RatingStateImpl>
    implements _$$RatingStateImplCopyWith<$Res> {
  __$$RatingStateImplCopyWithImpl(
      _$RatingStateImpl _value, $Res Function(_$RatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isUpdateLoading = null,
    Object? unauthorized = null,
    Object? hasData = null,
    Object? ratingDetails = freezed,
    Object? message = freezed,
    Object? ratingcount = freezed,
  }) {
    return _then(_$RatingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
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
      ratingDetails: freezed == ratingDetails
          ? _value.ratingDetails
          : ratingDetails // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingcount: freezed == ratingcount
          ? _value.ratingcount
          : ratingcount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RatingStateImpl implements _RatingState {
  const _$RatingStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.isUpdateLoading,
      required this.unauthorized,
      required this.hasData,
      required this.ratingDetails,
      required this.message,
      required this.ratingcount});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isUpdateLoading;
  @override
  final bool unauthorized;
  @override
  final bool hasData;
  @override
  final RatingModel? ratingDetails;
  @override
  final String? message;
  @override
  final int? ratingcount;

  @override
  String toString() {
    return 'RatingState(isLoading: $isLoading, isError: $isError, isUpdateLoading: $isUpdateLoading, unauthorized: $unauthorized, hasData: $hasData, ratingDetails: $ratingDetails, message: $message, ratingcount: $ratingcount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.ratingDetails, ratingDetails) ||
                other.ratingDetails == ratingDetails) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ratingcount, ratingcount) ||
                other.ratingcount == ratingcount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      isUpdateLoading,
      unauthorized,
      hasData,
      ratingDetails,
      message,
      ratingcount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingStateImplCopyWith<_$RatingStateImpl> get copyWith =>
      __$$RatingStateImplCopyWithImpl<_$RatingStateImpl>(this, _$identity);
}

abstract class _RatingState implements RatingState {
  const factory _RatingState(
      {required final bool isLoading,
      required final bool isError,
      required final bool isUpdateLoading,
      required final bool unauthorized,
      required final bool hasData,
      required final RatingModel? ratingDetails,
      required final String? message,
      required final int? ratingcount}) = _$RatingStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isUpdateLoading;
  @override
  bool get unauthorized;
  @override
  bool get hasData;
  @override
  RatingModel? get ratingDetails;
  @override
  String? get message;
  @override
  int? get ratingcount;
  @override
  @JsonKey(ignore: true)
  _$$RatingStateImplCopyWith<_$RatingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
