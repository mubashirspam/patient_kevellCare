// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(List<Prescription> data) genaratePdf,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(List<Prescription> data)? genaratePdf,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(List<Prescription> data)? genaratePdf,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_PickDate value) pickDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_PickDate value)? pickDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res, ReportEvent>;
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res, $Val extends ReportEvent>
    implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchReportGeneralinfoCopyWith<$Res> {
  factory _$$_FetchReportGeneralinfoCopyWith(_$_FetchReportGeneralinfo value,
          $Res Function(_$_FetchReportGeneralinfo) then) =
      __$$_FetchReportGeneralinfoCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_FetchReportGeneralinfoCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$_FetchReportGeneralinfo>
    implements _$$_FetchReportGeneralinfoCopyWith<$Res> {
  __$$_FetchReportGeneralinfoCopyWithImpl(_$_FetchReportGeneralinfo _value,
      $Res Function(_$_FetchReportGeneralinfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FetchReportGeneralinfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchReportGeneralinfo implements _FetchReportGeneralinfo {
  const _$_FetchReportGeneralinfo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ReportEvent.fetchReportGeneralinfo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchReportGeneralinfo &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchReportGeneralinfoCopyWith<_$_FetchReportGeneralinfo> get copyWith =>
      __$$_FetchReportGeneralinfoCopyWithImpl<_$_FetchReportGeneralinfo>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(List<Prescription> data) genaratePdf,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) {
    return fetchReportGeneralinfo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(List<Prescription> data)? genaratePdf,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) {
    return fetchReportGeneralinfo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(List<Prescription> data)? genaratePdf,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) {
    if (fetchReportGeneralinfo != null) {
      return fetchReportGeneralinfo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_PickDate value) pickDate,
  }) {
    return fetchReportGeneralinfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_PickDate value)? pickDate,
  }) {
    return fetchReportGeneralinfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) {
    if (fetchReportGeneralinfo != null) {
      return fetchReportGeneralinfo(this);
    }
    return orElse();
  }
}

abstract class _FetchReportGeneralinfo implements ReportEvent {
  const factory _FetchReportGeneralinfo({required final int id}) =
      _$_FetchReportGeneralinfo;

  int get id;
  @JsonKey(ignore: true)
  _$$_FetchReportGeneralinfoCopyWith<_$_FetchReportGeneralinfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchReportCopyWith<$Res> {
  factory _$$_FetchReportCopyWith(
          _$_FetchReport value, $Res Function(_$_FetchReport) then) =
      __$$_FetchReportCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchReportPayload fetchReportPayload});
}

/// @nodoc
class __$$_FetchReportCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$_FetchReport>
    implements _$$_FetchReportCopyWith<$Res> {
  __$$_FetchReportCopyWithImpl(
      _$_FetchReport _value, $Res Function(_$_FetchReport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchReportPayload = null,
  }) {
    return _then(_$_FetchReport(
      fetchReportPayload: null == fetchReportPayload
          ? _value.fetchReportPayload
          : fetchReportPayload // ignore: cast_nullable_to_non_nullable
              as FetchReportPayload,
    ));
  }
}

/// @nodoc

class _$_FetchReport implements _FetchReport {
  const _$_FetchReport({required this.fetchReportPayload});

  @override
  final FetchReportPayload fetchReportPayload;

  @override
  String toString() {
    return 'ReportEvent.fetchReport(fetchReportPayload: $fetchReportPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchReport &&
            (identical(other.fetchReportPayload, fetchReportPayload) ||
                other.fetchReportPayload == fetchReportPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchReportPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchReportCopyWith<_$_FetchReport> get copyWith =>
      __$$_FetchReportCopyWithImpl<_$_FetchReport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(List<Prescription> data) genaratePdf,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) {
    return fetchReport(fetchReportPayload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(List<Prescription> data)? genaratePdf,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) {
    return fetchReport?.call(fetchReportPayload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(List<Prescription> data)? genaratePdf,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) {
    if (fetchReport != null) {
      return fetchReport(fetchReportPayload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_PickDate value) pickDate,
  }) {
    return fetchReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_PickDate value)? pickDate,
  }) {
    return fetchReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) {
    if (fetchReport != null) {
      return fetchReport(this);
    }
    return orElse();
  }
}

abstract class _FetchReport implements ReportEvent {
  const factory _FetchReport(
      {required final FetchReportPayload fetchReportPayload}) = _$_FetchReport;

  FetchReportPayload get fetchReportPayload;
  @JsonKey(ignore: true)
  _$$_FetchReportCopyWith<_$_FetchReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GeneratePdfCopyWith<$Res> {
  factory _$$_GeneratePdfCopyWith(
          _$_GeneratePdf value, $Res Function(_$_GeneratePdf) then) =
      __$$_GeneratePdfCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Prescription> data});
}

/// @nodoc
class __$$_GeneratePdfCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$_GeneratePdf>
    implements _$$_GeneratePdfCopyWith<$Res> {
  __$$_GeneratePdfCopyWithImpl(
      _$_GeneratePdf _value, $Res Function(_$_GeneratePdf) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GeneratePdf(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Prescription>,
    ));
  }
}

/// @nodoc

class _$_GeneratePdf implements _GeneratePdf {
  const _$_GeneratePdf({required final List<Prescription> data}) : _data = data;

  final List<Prescription> _data;
  @override
  List<Prescription> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ReportEvent.genaratePdf(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneratePdf &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneratePdfCopyWith<_$_GeneratePdf> get copyWith =>
      __$$_GeneratePdfCopyWithImpl<_$_GeneratePdf>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(List<Prescription> data) genaratePdf,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) {
    return genaratePdf(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(List<Prescription> data)? genaratePdf,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) {
    return genaratePdf?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(List<Prescription> data)? genaratePdf,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) {
    if (genaratePdf != null) {
      return genaratePdf(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_PickDate value) pickDate,
  }) {
    return genaratePdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_PickDate value)? pickDate,
  }) {
    return genaratePdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) {
    if (genaratePdf != null) {
      return genaratePdf(this);
    }
    return orElse();
  }
}

abstract class _GeneratePdf implements ReportEvent {
  const factory _GeneratePdf({required final List<Prescription> data}) =
      _$_GeneratePdf;

  List<Prescription> get data;
  @JsonKey(ignore: true)
  _$$_GeneratePdfCopyWith<_$_GeneratePdf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickDateCopyWith<$Res> {
  factory _$$_PickDateCopyWith(
          _$_PickDate value, $Res Function(_$_PickDate) then) =
      __$$_PickDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$_PickDateCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$_PickDate>
    implements _$$_PickDateCopyWith<$Res> {
  __$$_PickDateCopyWithImpl(
      _$_PickDate _value, $Res Function(_$_PickDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$_PickDate(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PickDate implements _PickDate {
  const _$_PickDate({required this.startDate, required this.endDate});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'ReportEvent.pickDate(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickDate &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickDateCopyWith<_$_PickDate> get copyWith =>
      __$$_PickDateCopyWithImpl<_$_PickDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchReportGeneralinfo,
    required TResult Function(FetchReportPayload fetchReportPayload)
        fetchReport,
    required TResult Function(List<Prescription> data) genaratePdf,
    required TResult Function(DateTime startDate, DateTime endDate) pickDate,
  }) {
    return pickDate(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchReportGeneralinfo,
    TResult? Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult? Function(List<Prescription> data)? genaratePdf,
    TResult? Function(DateTime startDate, DateTime endDate)? pickDate,
  }) {
    return pickDate?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchReportGeneralinfo,
    TResult Function(FetchReportPayload fetchReportPayload)? fetchReport,
    TResult Function(List<Prescription> data)? genaratePdf,
    TResult Function(DateTime startDate, DateTime endDate)? pickDate,
    required TResult orElse(),
  }) {
    if (pickDate != null) {
      return pickDate(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReportGeneralinfo value)
        fetchReportGeneralinfo,
    required TResult Function(_FetchReport value) fetchReport,
    required TResult Function(_GeneratePdf value) genaratePdf,
    required TResult Function(_PickDate value) pickDate,
  }) {
    return pickDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult? Function(_FetchReport value)? fetchReport,
    TResult? Function(_GeneratePdf value)? genaratePdf,
    TResult? Function(_PickDate value)? pickDate,
  }) {
    return pickDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReportGeneralinfo value)? fetchReportGeneralinfo,
    TResult Function(_FetchReport value)? fetchReport,
    TResult Function(_GeneratePdf value)? genaratePdf,
    TResult Function(_PickDate value)? pickDate,
    required TResult orElse(),
  }) {
    if (pickDate != null) {
      return pickDate(this);
    }
    return orElse();
  }
}

abstract class _PickDate implements ReportEvent {
  const factory _PickDate(
      {required final DateTime startDate,
      required final DateTime endDate}) = _$_PickDate;

  DateTime get startDate;
  DateTime get endDate;
  @JsonKey(ignore: true)
  _$$_PickDateCopyWith<_$_PickDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReportState {
  bool get isGenaralInfoLoading => throw _privateConstructorUsedError;
  bool get isReportDataLoading => throw _privateConstructorUsedError;
  bool get hasGenaralInfoData => throw _privateConstructorUsedError;
  bool get hasReportData => throw _privateConstructorUsedError;
  bool get unauthorized => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  ReportGeneraInfoModel? get reportGeneraInfo =>
      throw _privateConstructorUsedError;
  ReportModel? get reportData => throw _privateConstructorUsedError;
  bool get isPdfLoading => throw _privateConstructorUsedError;
  bool get pdfCreated => throw _privateConstructorUsedError;
  pw.Document? get pdf => throw _privateConstructorUsedError;
  bool get pdfError => throw _privateConstructorUsedError;
  String get pdfErrorMessage => throw _privateConstructorUsedError;
  String? get pdfPath => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res, ReportState>;
  @useResult
  $Res call(
      {bool isGenaralInfoLoading,
      bool isReportDataLoading,
      bool hasGenaralInfoData,
      bool hasReportData,
      bool unauthorized,
      bool isError,
      ReportGeneraInfoModel? reportGeneraInfo,
      ReportModel? reportData,
      bool isPdfLoading,
      bool pdfCreated,
      pw.Document? pdf,
      bool pdfError,
      String pdfErrorMessage,
      String? pdfPath,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGenaralInfoLoading = null,
    Object? isReportDataLoading = null,
    Object? hasGenaralInfoData = null,
    Object? hasReportData = null,
    Object? unauthorized = null,
    Object? isError = null,
    Object? reportGeneraInfo = freezed,
    Object? reportData = freezed,
    Object? isPdfLoading = null,
    Object? pdfCreated = null,
    Object? pdf = freezed,
    Object? pdfError = null,
    Object? pdfErrorMessage = null,
    Object? pdfPath = freezed,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      isGenaralInfoLoading: null == isGenaralInfoLoading
          ? _value.isGenaralInfoLoading
          : isGenaralInfoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReportDataLoading: null == isReportDataLoading
          ? _value.isReportDataLoading
          : isReportDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasGenaralInfoData: null == hasGenaralInfoData
          ? _value.hasGenaralInfoData
          : hasGenaralInfoData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReportData: null == hasReportData
          ? _value.hasReportData
          : hasReportData // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      reportGeneraInfo: freezed == reportGeneraInfo
          ? _value.reportGeneraInfo
          : reportGeneraInfo // ignore: cast_nullable_to_non_nullable
              as ReportGeneraInfoModel?,
      reportData: freezed == reportData
          ? _value.reportData
          : reportData // ignore: cast_nullable_to_non_nullable
              as ReportModel?,
      isPdfLoading: null == isPdfLoading
          ? _value.isPdfLoading
          : isPdfLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfCreated: null == pdfCreated
          ? _value.pdfCreated
          : pdfCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as pw.Document?,
      pdfError: null == pdfError
          ? _value.pdfError
          : pdfError // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfErrorMessage: null == pdfErrorMessage
          ? _value.pdfErrorMessage
          : pdfErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      pdfPath: freezed == pdfPath
          ? _value.pdfPath
          : pdfPath // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportStateCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$_ReportStateCopyWith(
          _$_ReportState value, $Res Function(_$_ReportState) then) =
      __$$_ReportStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isGenaralInfoLoading,
      bool isReportDataLoading,
      bool hasGenaralInfoData,
      bool hasReportData,
      bool unauthorized,
      bool isError,
      ReportGeneraInfoModel? reportGeneraInfo,
      ReportModel? reportData,
      bool isPdfLoading,
      bool pdfCreated,
      pw.Document? pdf,
      bool pdfError,
      String pdfErrorMessage,
      String? pdfPath,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$$_ReportStateCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$_ReportState>
    implements _$$_ReportStateCopyWith<$Res> {
  __$$_ReportStateCopyWithImpl(
      _$_ReportState _value, $Res Function(_$_ReportState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGenaralInfoLoading = null,
    Object? isReportDataLoading = null,
    Object? hasGenaralInfoData = null,
    Object? hasReportData = null,
    Object? unauthorized = null,
    Object? isError = null,
    Object? reportGeneraInfo = freezed,
    Object? reportData = freezed,
    Object? isPdfLoading = null,
    Object? pdfCreated = null,
    Object? pdf = freezed,
    Object? pdfError = null,
    Object? pdfErrorMessage = null,
    Object? pdfPath = freezed,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$_ReportState(
      isGenaralInfoLoading: null == isGenaralInfoLoading
          ? _value.isGenaralInfoLoading
          : isGenaralInfoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReportDataLoading: null == isReportDataLoading
          ? _value.isReportDataLoading
          : isReportDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasGenaralInfoData: null == hasGenaralInfoData
          ? _value.hasGenaralInfoData
          : hasGenaralInfoData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReportData: null == hasReportData
          ? _value.hasReportData
          : hasReportData // ignore: cast_nullable_to_non_nullable
              as bool,
      unauthorized: null == unauthorized
          ? _value.unauthorized
          : unauthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      reportGeneraInfo: freezed == reportGeneraInfo
          ? _value.reportGeneraInfo
          : reportGeneraInfo // ignore: cast_nullable_to_non_nullable
              as ReportGeneraInfoModel?,
      reportData: freezed == reportData
          ? _value.reportData
          : reportData // ignore: cast_nullable_to_non_nullable
              as ReportModel?,
      isPdfLoading: null == isPdfLoading
          ? _value.isPdfLoading
          : isPdfLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfCreated: null == pdfCreated
          ? _value.pdfCreated
          : pdfCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as pw.Document?,
      pdfError: null == pdfError
          ? _value.pdfError
          : pdfError // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfErrorMessage: null == pdfErrorMessage
          ? _value.pdfErrorMessage
          : pdfErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      pdfPath: freezed == pdfPath
          ? _value.pdfPath
          : pdfPath // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ReportState implements _ReportState {
  const _$_ReportState(
      {required this.isGenaralInfoLoading,
      required this.isReportDataLoading,
      required this.hasGenaralInfoData,
      required this.hasReportData,
      required this.unauthorized,
      required this.isError,
      this.reportGeneraInfo,
      this.reportData,
      required this.isPdfLoading,
      required this.pdfCreated,
      required this.pdf,
      required this.pdfError,
      required this.pdfErrorMessage,
      this.pdfPath,
      required this.startDate,
      required this.endDate});

  @override
  final bool isGenaralInfoLoading;
  @override
  final bool isReportDataLoading;
  @override
  final bool hasGenaralInfoData;
  @override
  final bool hasReportData;
  @override
  final bool unauthorized;
  @override
  final bool isError;
  @override
  final ReportGeneraInfoModel? reportGeneraInfo;
  @override
  final ReportModel? reportData;
  @override
  final bool isPdfLoading;
  @override
  final bool pdfCreated;
  @override
  final pw.Document? pdf;
  @override
  final bool pdfError;
  @override
  final String pdfErrorMessage;
  @override
  final String? pdfPath;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'ReportState(isGenaralInfoLoading: $isGenaralInfoLoading, isReportDataLoading: $isReportDataLoading, hasGenaralInfoData: $hasGenaralInfoData, hasReportData: $hasReportData, unauthorized: $unauthorized, isError: $isError, reportGeneraInfo: $reportGeneraInfo, reportData: $reportData, isPdfLoading: $isPdfLoading, pdfCreated: $pdfCreated, pdf: $pdf, pdfError: $pdfError, pdfErrorMessage: $pdfErrorMessage, pdfPath: $pdfPath, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportState &&
            (identical(other.isGenaralInfoLoading, isGenaralInfoLoading) ||
                other.isGenaralInfoLoading == isGenaralInfoLoading) &&
            (identical(other.isReportDataLoading, isReportDataLoading) ||
                other.isReportDataLoading == isReportDataLoading) &&
            (identical(other.hasGenaralInfoData, hasGenaralInfoData) ||
                other.hasGenaralInfoData == hasGenaralInfoData) &&
            (identical(other.hasReportData, hasReportData) ||
                other.hasReportData == hasReportData) &&
            (identical(other.unauthorized, unauthorized) ||
                other.unauthorized == unauthorized) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.reportGeneraInfo, reportGeneraInfo) ||
                other.reportGeneraInfo == reportGeneraInfo) &&
            (identical(other.reportData, reportData) ||
                other.reportData == reportData) &&
            (identical(other.isPdfLoading, isPdfLoading) ||
                other.isPdfLoading == isPdfLoading) &&
            (identical(other.pdfCreated, pdfCreated) ||
                other.pdfCreated == pdfCreated) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.pdfError, pdfError) ||
                other.pdfError == pdfError) &&
            (identical(other.pdfErrorMessage, pdfErrorMessage) ||
                other.pdfErrorMessage == pdfErrorMessage) &&
            (identical(other.pdfPath, pdfPath) || other.pdfPath == pdfPath) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isGenaralInfoLoading,
      isReportDataLoading,
      hasGenaralInfoData,
      hasReportData,
      unauthorized,
      isError,
      reportGeneraInfo,
      reportData,
      isPdfLoading,
      pdfCreated,
      pdf,
      pdfError,
      pdfErrorMessage,
      pdfPath,
      startDate,
      endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportStateCopyWith<_$_ReportState> get copyWith =>
      __$$_ReportStateCopyWithImpl<_$_ReportState>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  const factory _ReportState(
      {required final bool isGenaralInfoLoading,
      required final bool isReportDataLoading,
      required final bool hasGenaralInfoData,
      required final bool hasReportData,
      required final bool unauthorized,
      required final bool isError,
      final ReportGeneraInfoModel? reportGeneraInfo,
      final ReportModel? reportData,
      required final bool isPdfLoading,
      required final bool pdfCreated,
      required final pw.Document? pdf,
      required final bool pdfError,
      required final String pdfErrorMessage,
      final String? pdfPath,
      required final DateTime startDate,
      required final DateTime endDate}) = _$_ReportState;

  @override
  bool get isGenaralInfoLoading;
  @override
  bool get isReportDataLoading;
  @override
  bool get hasGenaralInfoData;
  @override
  bool get hasReportData;
  @override
  bool get unauthorized;
  @override
  bool get isError;
  @override
  ReportGeneraInfoModel? get reportGeneraInfo;
  @override
  ReportModel? get reportData;
  @override
  bool get isPdfLoading;
  @override
  bool get pdfCreated;
  @override
  pw.Document? get pdf;
  @override
  bool get pdfError;
  @override
  String get pdfErrorMessage;
  @override
  String? get pdfPath;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_ReportStateCopyWith<_$_ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}
