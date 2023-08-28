// To parse this JSON data, do
//
//     final deleteAppoinmentsModel = deleteAppoinmentsModelFromJson(jsonString);

import 'dart:convert';

DeleteAppoinmentsModel deleteAppoinmentsModelFromJson(String str) => DeleteAppoinmentsModel.fromJson(json.decode(str));

String deleteAppoinmentsModelToJson(DeleteAppoinmentsModel data) => json.encode(data.toJson());

class DeleteAppoinmentsModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    DeleteAppoinmentsModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory DeleteAppoinmentsModel.fromJson(Map<String, dynamic> json) => DeleteAppoinmentsModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    DeleteApp? deleteApp;

    Data({
        this.deleteApp,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        deleteApp: json["deleteApp"] == null ? null : DeleteApp.fromJson(json["deleteApp"]),
    );

    Map<String, dynamic> toJson() => {
        "deleteApp": deleteApp?.toJson(),
    };
}

class DeleteApp {
    int? id;
    int? patientId;
    String? patientid;
    String? patientname;
    DateTime? appointmentstarttime;
    DateTime? appointmentendtime;
    int? doctornameid;
    String? doctorname;
    DateTime? appointmentdate;
    List<dynamic>? preexistingdisease;
    bool? isvisited;
    bool? isTimeup;
    String? date;
    int? userdoctorrating;
    String? userdoctorcommand;
    String? patientpdflink;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? sno;
    int? v;

    DeleteApp({
        this.id,
        this.patientId,
        this.patientid,
        this.patientname,
        this.appointmentstarttime,
        this.appointmentendtime,
        this.doctornameid,
        this.doctorname,
        this.appointmentdate,
        this.preexistingdisease,
        this.isvisited,
        this.isTimeup,
        this.date,
        this.userdoctorrating,
        this.userdoctorcommand,
        this.patientpdflink,
        this.createdAt,
        this.updatedAt,
        this.sno,
        this.v,
    });

    factory DeleteApp.fromJson(Map<String, dynamic> json) => DeleteApp(
        id: json["_id"],
        patientId: json["patientId"],
        patientid: json["patientid"],
        patientname: json["patientname"],
        appointmentstarttime: json["appointmentstarttime"] == null ? null : DateTime.parse(json["appointmentstarttime"]),
        appointmentendtime: json["appointmentendtime"] == null ? null : DateTime.parse(json["appointmentendtime"]),
        doctornameid: json["doctornameid"],
        doctorname: json["doctorname"],
        appointmentdate: json["appointmentdate"] == null ? null : DateTime.parse(json["appointmentdate"]),
        preexistingdisease: json["preexistingdisease"] == null ? [] : List<dynamic>.from(json["preexistingdisease"]!.map((x) => x)),
        isvisited: json["isvisited"],
        isTimeup: json["is_timeup"],
        date: json["date"],
        userdoctorrating: json["userdoctorrating"],
        userdoctorcommand: json["userdoctorcommand"],
        patientpdflink: json["patientpdflink"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        sno: json["sno"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "patientId": patientId,
        "patientid": patientid,
        "patientname": patientname,
        "appointmentstarttime": appointmentstarttime?.toIso8601String(),
        "appointmentendtime": appointmentendtime?.toIso8601String(),
        "doctornameid": doctornameid,
        "doctorname": doctorname,
        "appointmentdate": "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "preexistingdisease": preexistingdisease == null ? [] : List<dynamic>.from(preexistingdisease!.map((x) => x)),
        "isvisited": isvisited,
        "is_timeup": isTimeup,
        "date": date,
        "userdoctorrating": userdoctorrating,
        "userdoctorcommand": userdoctorcommand,
        "patientpdflink": patientpdflink,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "sno": sno,
        "__v": v,
    };
}
