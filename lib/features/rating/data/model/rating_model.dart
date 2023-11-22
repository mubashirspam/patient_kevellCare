// To parse this JSON data, do
//
//     final ratingModel = ratingModelFromJson(jsonString);

import 'dart:convert';

RatingModel ratingModelFromJson(String str) => RatingModel.fromJson(json.decode(str));

String ratingModelToJson(RatingModel data) => json.encode(data.toJson());

class RatingModel {
    int responseCode;
    bool status;
    String message;
    List<Datum> data;

    RatingModel({
        required this.responseCode,
        required this.status,
        required this.message,
        required this.data,
    });

    factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int ratings;
    String reveiw;
    int patientId;
    int appointmentId;
    dynamic appointmentReason;
    String patientName;
    String doctorName;
    int doctorId;

    Datum({
        required this.ratings,
        required this.reveiw,
        required this.patientId,
        required this.appointmentId,
        required this.appointmentReason,
        required this.patientName,
        required this.doctorName,
        required this.doctorId,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        ratings: json["ratings"],
        reveiw: json["reveiw"],
        patientId: json["patient_id"],
        appointmentId: json["appointment_id"],
        appointmentReason: json["appointment_reason"],
        patientName: json["patient_name"],
        doctorName: json["doctor_name"],
        doctorId: json["doctor_id"],
    );

    Map<String, dynamic> toJson() => {
        "ratings": ratings,
        "reveiw": reveiw,
        "patient_id": patientId,
        "appointment_id": appointmentId,
        "appointment_reason": appointmentReason,
        "patient_name": patientName,
        "doctor_name": doctorName,
        "doctor_id": doctorId,
    };
}
