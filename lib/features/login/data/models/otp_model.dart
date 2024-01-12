// To parse this JSON data, do
//
//     final verifyOtpModel = verifyOtpModelFromJson(jsonString);

import 'dart:convert';

VerifyOtpModel verifyOtpModelFromJson(String str) => VerifyOtpModel.fromJson(json.decode(str));

String verifyOtpModelToJson(VerifyOtpModel data) => json.encode(data.toJson());

class VerifyOtpModel {
    int responseCode;
    bool success;
    String result;
    List<Datum> data;

    VerifyOtpModel({
        required this.responseCode,
        required this.success,
        required this.result,
        required this.data,
    });

    factory VerifyOtpModel.fromJson(Map<String, dynamic> json) => VerifyOtpModel(
        responseCode: json["responseCode"],
        success: json["success"],
        result: json["result"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "success": success,
        "result": result,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String name;
    String mobileNo;
    String emailId;
    String token;
    DateTime createdAt;
    DateTime updatedAt;
    String otp;

    Datum({
        required this.id,
        required this.name,
        required this.mobileNo,
        required this.emailId,
        required this.token,
        required this.createdAt,
        required this.updatedAt,
        required this.otp,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        mobileNo: json["mobile_no"],
        emailId: json["email_id"],
        token: json["token"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        otp: json["otp"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "mobile_no": mobileNo,
        "email_id": emailId,
        "token": token,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "otp": otp,
    };
}
