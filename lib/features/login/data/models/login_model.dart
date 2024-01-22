// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    bool status;
    int responsecode;
    String message;
    List<Datum> data;

    LoginModel({
        required this.status,
        required this.responsecode,
        required this.message,
        required this.data,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
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
    String token;
    bool ismobileVerified;
    DateTime createdAt;
    DateTime updatedAt;
    String otp;

    Datum({
        required this.id,
        required this.name,
        required this.mobileNo,
        required this.emailId,
        required this.token,
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
        token: json["token"],
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
        "token": token,
        "ismobile_verified": ismobileVerified,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "otp": otp,
    };
}
