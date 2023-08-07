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

    OtpModel({
        this.responseCode,
        this.success,
        this.result,
    });

    factory OtpModel.fromJson(Map<String, dynamic> json) => OtpModel(
        responseCode: json["responseCode"],
        success: json["success"],
        result: json["result"],
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "success": success,
        "result": result,
    };
}
