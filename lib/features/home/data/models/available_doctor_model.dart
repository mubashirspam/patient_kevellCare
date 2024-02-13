class AvailableDoctorModel {
  int? responseCode;
  bool? status;
  String? message;
  List<AvailableDoctor>? availableDoctors;

  AvailableDoctorModel({
    this.responseCode,
    this.status,
    this.message,
    this.availableDoctors,
  });

  AvailableDoctorModel copyWith({
    int? responseCode,
    bool? status,
    String? message,
    List<AvailableDoctor>? availableDoctors,
  }) =>
      AvailableDoctorModel(
        responseCode: responseCode ?? this.responseCode,
        status: status ?? this.status,
        message: message ?? this.message,
        availableDoctors: availableDoctors ?? this.availableDoctors,
      );

  factory AvailableDoctorModel.fromJson(Map<String, dynamic> json) =>
      AvailableDoctorModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        availableDoctors: json["data"] == null
            ? []
            : List<AvailableDoctor>.from(
                json["data"]!.map((x) => AvailableDoctor.fromJson(x))),
      );
}

class AvailableDoctor {
  int? id;
  String? name;
  String? emailId;
  String? mobileNo;
  String? specialist;
  String? location;
  String? profileImagelink;
  List<Schedule>? schedule;

  AvailableDoctor({
    this.id,
    this.name,
    this.emailId,
    this.mobileNo,
    this.specialist,
    this.location,
    this.profileImagelink,
    this.schedule,
  });

  AvailableDoctor copyWith({
    int? id,
    String? name,
    String? emailId,
    String? mobileNo,
    String? specialist,
    String? location,
    String? profileImagelink,
    List<Schedule>? schedule,
  }) =>
      AvailableDoctor(
        id: id ?? this.id,
        name: name ?? this.name,
        emailId: emailId ?? this.emailId,
        mobileNo: mobileNo ?? this.mobileNo,
        specialist: specialist ?? this.specialist,
        location: location ?? this.location,
        profileImagelink: profileImagelink ?? this.profileImagelink,
        schedule: schedule ?? this.schedule,
      );

  factory AvailableDoctor.fromJson(Map<String, dynamic> json) =>
      AvailableDoctor(
        id: json["_id"],
        name: json["name"],
        emailId: json["email_id"],
        mobileNo: json["mobile_no"],
        specialist: json["specialist"],
        location: json["location"],
        profileImagelink: json["profile_imagelink"],
        schedule: json["data"] == null
            ? []
            : List<Schedule>.from(
                json["data"]!.map((x) => Schedule.fromJson(x))),
      );
}

class Schedule {
  int? id;
  int? doctorId;
  DateTime? startDate;
  DateTime? endDate;
  int? dailyLimitCount;
  int? timePerPatient;
  String? type;
  String? month;
  String? year;
  DateTime? days;
  bool? isScheduleApproved;
  DateTime? startTime;
  DateTime? endTime;
  String? amount;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  dynamic waitingpatient;
  List<Bookedtime>? bookedtime;

  Schedule({
    this.id,
    this.doctorId,
    this.startDate,
    this.endDate,
    this.dailyLimitCount,
    this.timePerPatient,
    this.type,
    this.month,
    this.year,
    this.days,
    this.isScheduleApproved,
    this.startTime,
    this.endTime,
    this.amount,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.waitingpatient,
    this.bookedtime,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        id: json["_id"],
        doctorId: json["doctor_id"],
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        dailyLimitCount: json["daily_limit_count"],
        timePerPatient: json["time_per_patient"],
        type: json["type"],
        month: json["month"],
        year: json["year"],
        days: json["days"] == null ? null : DateTime.parse(json["days"]),
        isScheduleApproved: json["is_schedule_approved"],
        startTime: json["start_time"] == null
            ? null
            : DateTime.parse(json["start_time"]),
        endTime:
            json["end_time"] == null ? null : DateTime.parse(json["end_time"]),
        amount: json["amount"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        waitingpatient: json["waitingpatient"],
        bookedtime: json["bookedtime"] == null
            ? []
            : List<Bookedtime>.from(
                json["bookedtime"]!.map((x) => Bookedtime.fromJson(x))),
      );
}

class Bookedtime {
  DateTime? starttime;
  DateTime? endtime;

  Bookedtime({
    this.starttime,
    this.endtime,
  });

  Bookedtime copyWith({
    DateTime? starttime,
    DateTime? endtime,
  }) =>
      Bookedtime(
        starttime: starttime ?? this.starttime,
        endtime: endtime ?? this.endtime,
      );

  factory Bookedtime.fromJson(Map<String, dynamic> json) => Bookedtime(
        starttime: json["start_time"] == null
            ? null
            : DateTime.parse(json["start_time"]),
        endtime:
            json["end_time"] == null ? null : DateTime.parse(json["end_time"]),
      );
}
