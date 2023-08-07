// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    bool? status;
    int? responsecode;
    String? message;
    List<Datum>? data;

    LoginModel({
        this.status,
        this.responsecode,
        this.message,
        this.data,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    String? username;
    String? mobile;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? otp;
    String? token;

    Datum({
        this.id,
        this.username,
        this.mobile,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.otp,
        this.token,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        username: json["Username"],
        mobile: json["mobile"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        otp: json["otp"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "Username": username,
        "mobile": mobile,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "otp": otp,
        "token": token,
    };
}
