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
    DateTime createdAt;
    DateTime updatedAt;
    String otp;
    bool ismobileVerified;

    Datum({
        required this.id,
        required this.name,
        required this.mobileNo,
        required this.emailId,
        required this.createdAt,
        required this.updatedAt,
        required this.otp,
        required this.ismobileVerified,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        mobileNo: json["mobile_no"],
        emailId: json["email_id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        otp: json["otp"],
        ismobileVerified: json["ismobile_verified"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "mobile_no": mobileNo,
        "email_id": emailId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "otp": otp,
        "ismobile_verified": ismobileVerified,
    };
}
