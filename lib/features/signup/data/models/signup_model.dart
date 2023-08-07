// To parse this JSON data, do
//
//     final signupModel = signupModelFromJson(jsonString);

import 'dart:convert';

SignupModel signupModelFromJson(String str) => SignupModel.fromJson(json.decode(str));

String signupModelToJson(SignupModel data) => json.encode(data.toJson());

class SignupModel {
    bool? status;
    int? responsecode;
    String? message;
    Data? data;

    SignupModel({
        this.status,
        this.responsecode,
        this.message,
        this.data,
    });

    factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    String? username;
    String? mobile;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? id;
    int? v;

    Data({
        this.username,
        this.mobile,
        this.createdAt,
        this.updatedAt,
        this.id,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        username: json["Username"],
        mobile: json["mobile"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        id: json["_id"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "Username": username,
        "mobile": mobile,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "_id": id,
        "__v": v,
    };
}
