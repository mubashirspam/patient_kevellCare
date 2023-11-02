// To parse this JSON data, do
//
//     final otpModel = otpModelFromJson(jsonString);

import 'dart:convert';

OtpModel otpModelFromJson(String str) => OtpModel.fromJson(json.decode(str));

String otpModelToJson(OtpModel data) => json.encode(data.toJson());

class OtpModel {
    int? responseCode;
    bool? success;
    String? result;
    List<Datum>? data;

    OtpModel({
        this.responseCode,
        this.success,
        this.result,
        this.data,
    });

    factory OtpModel.fromJson(Map<String, dynamic> json) => OtpModel(
        responseCode: json["responseCode"],
        success: json["success"],
        result: json["result"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "success": success,
        "result": result,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    String? username;
    String? mobile;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? otp;
    String? token;

    Datum({
        this.id,
        this.username,
        this.mobile,
        this.createdAt,
        this.updatedAt,
        this.otp,
        this.token,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        username: json["Username"],
        mobile: json["mobile"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        otp: json["otp"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "Username": username,
        "mobile": mobile,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "otp": otp,
        "token": token,
    };
}
