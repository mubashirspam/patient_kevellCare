// To parse this JSON data, do
//
//     final homeAvailableDoctorModel = homeAvailableDoctorModelFromJson(jsonString);

import 'dart:convert';

HomeAvailableDoctorModel homeAvailableDoctorModelFromJson(String str) => HomeAvailableDoctorModel.fromJson(json.decode(str));

String homeAvailableDoctorModelToJson(HomeAvailableDoctorModel data) => json.encode(data.toJson());

class HomeAvailableDoctorModel {
    int? responseCode;
    bool? status;
    String? message;
    List<HomeAvailableDoctorModelDatum>? data;

    HomeAvailableDoctorModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory HomeAvailableDoctorModel.fromJson(Map<String, dynamic> json) => HomeAvailableDoctorModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<HomeAvailableDoctorModelDatum>.from(json["data"]!.map((x) => HomeAvailableDoctorModelDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class HomeAvailableDoctorModelDatum {
    int? id;
    String? username;
    String? emailid;
    String? mobileNo;
    List<DatumDatum>? data;

    HomeAvailableDoctorModelDatum({
        this.id,
        this.username,
        this.emailid,
        this.mobileNo,
        this.data,
    });

    factory HomeAvailableDoctorModelDatum.fromJson(Map<String, dynamic> json) => HomeAvailableDoctorModelDatum(
        id: json["_id"],
        username: json["username"],
        emailid: json["Emailid"],
        mobileNo: json["MobileNo"],
        data: json["data"] == null ? [] : List<DatumDatum>.from(json["data"]!.map((x) => DatumDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "Emailid": emailid,
        "MobileNo": mobileNo,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class DatumDatum {
    int? id;
    int? doctorId;
    DateTime? startdate;
    DateTime? enddate;
    int? dailylimitcount;
    String? type;
    String? month;
    String? year;
    DateTime? days;
    DateTime? starttime;
    DateTime? endtime;
    int? timeperPatient;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    List<Bookedtime>? bookedtime;

    DatumDatum({
        this.id,
        this.doctorId,
        this.startdate,
        this.enddate,
        this.dailylimitcount,
        this.type,
        this.month,
        this.year,
        this.days,
        this.starttime,
        this.endtime,
        this.timeperPatient,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.bookedtime,
    });

    factory DatumDatum.fromJson(Map<String, dynamic> json) => DatumDatum(
        id: json["_id"],
        doctorId: json["doctor_id"],
        startdate: json["startdate"] == null ? null : DateTime.parse(json["startdate"]),
        enddate: json["enddate"] == null ? null : DateTime.parse(json["enddate"]),
        dailylimitcount: json["dailylimitcount"],
        type: json["type"],
        month: json["month"],
        year: json["year"],
        days: json["Days"] == null ? null : DateTime.parse(json["Days"]),
        starttime: json["starttime"] == null ? null : DateTime.parse(json["starttime"]),
        endtime: json["endtime"] == null ? null : DateTime.parse(json["endtime"]),
        timeperPatient: json["timeperPatient"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        bookedtime: json["bookedtime"] == null ? [] : List<Bookedtime>.from(json["bookedtime"]!.map((x) => Bookedtime.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "doctor_id": doctorId,
        "startdate": "${startdate!.year.toString().padLeft(4, '0')}-${startdate!.month.toString().padLeft(2, '0')}-${startdate!.day.toString().padLeft(2, '0')}",
        "enddate": "${enddate!.year.toString().padLeft(4, '0')}-${enddate!.month.toString().padLeft(2, '0')}-${enddate!.day.toString().padLeft(2, '0')}",
        "dailylimitcount": dailylimitcount,
        "type": type,
        "month": month,
        "year": year,
        "Days": "${days!.year.toString().padLeft(4, '0')}-${days!.month.toString().padLeft(2, '0')}-${days!.day.toString().padLeft(2, '0')}",
        "starttime": starttime?.toIso8601String(),
        "endtime": endtime?.toIso8601String(),
        "timeperPatient": timeperPatient,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "bookedtime": bookedtime == null ? [] : List<dynamic>.from(bookedtime!.map((x) => x.toJson())),
    };
}

class Bookedtime {
    DateTime? starttime;
    DateTime? endtime;

    Bookedtime({
        this.starttime,
        this.endtime,
    });

    factory Bookedtime.fromJson(Map<String, dynamic> json) => Bookedtime(
        starttime: json["starttime"] == null ? null : DateTime.parse(json["starttime"]),
        endtime: json["endtime"] == null ? null : DateTime.parse(json["endtime"]),
    );

    Map<String, dynamic> toJson() => {
        "starttime": starttime?.toIso8601String(),
        "endtime": endtime?.toIso8601String(),
    };
}
