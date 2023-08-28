// To parse this JSON data, do
//
//     final updateAppoinmentsModel = updateAppoinmentsModelFromJson(jsonString);

import 'dart:convert';

UpdateAppoinmentsModel updateAppoinmentsModelFromJson(String str) => UpdateAppoinmentsModel.fromJson(json.decode(str));

String updateAppoinmentsModelToJson(UpdateAppoinmentsModel data) => json.encode(data.toJson());

class UpdateAppoinmentsModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    UpdateAppoinmentsModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory UpdateAppoinmentsModel.fromJson(Map<String, dynamic> json) => UpdateAppoinmentsModel(
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
    UpdApp? updApp;

    Data({
        this.updApp,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        updApp: json["updApp"] == null ? null : UpdApp.fromJson(json["updApp"]),
    );

    Map<String, dynamic> toJson() => {
        "updApp": updApp?.toJson(),
    };
}

class UpdApp {
    bool? acknowledged;
    int? modifiedCount;
    dynamic upsertedId;
    int? upsertedCount;
    int? matchedCount;
    DateTime? appointmentdate;
    DateTime? appointmentstarttime;
    DateTime? appointmentendtime;
    String? reasonformeetingdoctor;

    UpdApp({
        this.acknowledged,
        this.modifiedCount,
        this.upsertedId,
        this.upsertedCount,
        this.matchedCount,
        this.appointmentdate,
        this.appointmentstarttime,
        this.appointmentendtime,
        this.reasonformeetingdoctor,
    });

    factory UpdApp.fromJson(Map<String, dynamic> json) => UpdApp(
        acknowledged: json["acknowledged"],
        modifiedCount: json["modifiedCount"],
        upsertedId: json["upsertedId"],
        upsertedCount: json["upsertedCount"],
        matchedCount: json["matchedCount"],
        appointmentdate: json["appointmentdate"] == null ? null : DateTime.parse(json["appointmentdate"]),
        appointmentstarttime: json["appointmentstarttime"] == null ? null : DateTime.parse(json["appointmentstarttime"]),
        appointmentendtime: json["appointmentendtime"] == null ? null : DateTime.parse(json["appointmentendtime"]),
        reasonformeetingdoctor: json["Reasonformeetingdoctor"],
    );

    Map<String, dynamic> toJson() => {
        "acknowledged": acknowledged,
        "modifiedCount": modifiedCount,
        "upsertedId": upsertedId,
        "upsertedCount": upsertedCount,
        "matchedCount": matchedCount,
        "appointmentdate": "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "appointmentstarttime": appointmentstarttime?.toIso8601String(),
        "appointmentendtime": appointmentendtime?.toIso8601String(),
        "Reasonformeetingdoctor": reasonformeetingdoctor,
    };
}
