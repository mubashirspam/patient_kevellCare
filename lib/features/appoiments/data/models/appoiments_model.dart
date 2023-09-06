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
    bool? isvisited;
    bool? isTimeup;
    int? userdoctorrating;
    String? userdoctorcommand;
    int? sno;
    Doctordata? doctordata;

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
        this.isvisited,
        this.isTimeup,
        this.userdoctorrating,
        this.userdoctorcommand,
        this.sno,
        this.doctordata,
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
        isvisited: json["isvisited"],
        isTimeup: json["is_timeup"],
        userdoctorrating: json["userdoctorrating"],
        userdoctorcommand: json["userdoctorcommand"],
        sno: json["sno"],
        doctordata: json["doctordata"] == null ? null : Doctordata.fromJson(json["doctordata"]),
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
        "isvisited": isvisited,
        "is_timeup": isTimeup,
        "userdoctorrating": userdoctorrating,
        "userdoctorcommand": userdoctorcommand,
        "sno": sno,
        "doctordata": doctordata?.toJson(),
    };
}

class Doctordata {
    int? doctorId;
    int? dailylimitcount;
    DateTime? starttime;
    DateTime? endtime;
    int? timeperPatient;

    Doctordata({
        this.doctorId,
        this.dailylimitcount,
        this.starttime,
        this.endtime,
        this.timeperPatient,
    });

    factory Doctordata.fromJson(Map<String, dynamic> json) => Doctordata(
        doctorId: json["doctor_id"],
        dailylimitcount: json["dailylimitcount"],
        starttime: json["starttime"] == null ? null : DateTime.parse(json["starttime"]),
        endtime: json["endtime"] == null ? null : DateTime.parse(json["endtime"]),
        timeperPatient: json["timeperPatient"],
    );

    Map<String, dynamic> toJson() => {
        "doctor_id": doctorId,
        "dailylimitcount": dailylimitcount,
        "starttime": starttime?.toIso8601String(),
        "endtime": endtime?.toIso8601String(),
        "timeperPatient": timeperPatient,
    };
}
