// To parse this JSON data, do
//
//     final appoimentModel = appoimentModelFromJson(jsonString);

import 'dart:convert';

AppoimentModel appoimentModelFromJson(String str) => AppoimentModel.fromJson(json.decode(str));

String appoimentModelToJson(AppoimentModel data) => json.encode(data.toJson());

class AppoimentModel {
    int? responseCode;
    bool? success;
    Message? message;

    AppoimentModel({
        this.responseCode,
        this.success,
        this.message,
    });

    factory AppoimentModel.fromJson(Map<String, dynamic> json) => AppoimentModel(
        responseCode: json["responseCode"],
        success: json["success"],
        message: json["message"] == null ? null : Message.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "success": success,
        "message": message?.toJson(),
    };
}

class Message {
    List<Past>? upcomingdata;
    List<Past>? past;

    Message({
        this.upcomingdata,
        this.past,
    });

    factory Message.fromJson(Map<String, dynamic> json) => Message(
        upcomingdata: json["upcomingdata"] == null ? [] : List<Past>.from(json["upcomingdata"]!.map((x) => Past.fromJson(x))),
        past: json["past"] == null ? [] : List<Past>.from(json["past"]!.map((x) => Past.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "upcomingdata": upcomingdata == null ? [] : List<dynamic>.from(upcomingdata!.map((x) => x.toJson())),
        "past": past == null ? [] : List<dynamic>.from(past!.map((x) => x.toJson())),
    };
}

class Past {
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
    String? date;
    int? userdoctorrating;
    String? userdoctorcommand;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? sno;
    int? v;
    String? reasonformeetingdoctor;

    Past({
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
        this.date,
        this.userdoctorrating,
        this.userdoctorcommand,
        this.createdAt,
        this.updatedAt,
        this.sno,
        this.v,
        this.reasonformeetingdoctor,
    });

    factory Past.fromJson(Map<String, dynamic> json) => Past(
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
        date: json["date"],
        userdoctorrating: json["userdoctorrating"],
        userdoctorcommand: json["userdoctorcommand"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        sno: json["sno"],
        v: json["__v"],
        reasonformeetingdoctor: json["Reasonformeetingdoctor"],
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
        "date": date,
        "userdoctorrating": userdoctorrating,
        "userdoctorcommand": userdoctorcommand,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "sno": sno,
        "__v": v,
        "Reasonformeetingdoctor": reasonformeetingdoctor,
    };
}
