// To parse this JSON data, do
//
//     final forgotModel = forgotModelFromJson(jsonString);

import 'dart:convert';

ForgotModel forgotModelFromJson(String str) => ForgotModel.fromJson(json.decode(str));

String forgotModelToJson(ForgotModel data) => json.encode(data.toJson());

class ForgotModel {
    bool status;
    int responsecode;
    String message;
    List<Datum> data;

    ForgotModel({
        required this.status,
        required this.responsecode,
        required this.message,
        required this.data,
    });

    factory ForgotModel.fromJson(Map<String, dynamic> json) => ForgotModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String name;
    String mobileNo;
    String emailId;
    bool ismobileVerified;
    DateTime createdAt;
    DateTime updatedAt;
    String otp;

    Datum({
        required this.id,
        required this.name,
        required this.mobileNo,
        required this.emailId,
        required this.ismobileVerified,
        required this.createdAt,
        required this.updatedAt,
        required this.otp,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        mobileNo: json["mobile_no"],
        emailId: json["email_id"],
        ismobileVerified: json["ismobile_verified"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        otp: json["otp"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "mobile_no": mobileNo,
        "email_id": emailId,
        "ismobile_verified": ismobileVerified,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "otp": otp,
    };
}
