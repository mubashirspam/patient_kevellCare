// To parse this JSON data, do
//
//     final signupModel = signupModelFromJson(jsonString);

import 'dart:convert';

SignupModel signupModelFromJson(String str) =>
    SignupModel.fromJson(json.decode(str));

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

  SignupModel copyWith({
    bool? status,
    int? responsecode,
    String? message,
    Data? data,
  }) =>
      SignupModel(
        status: status ?? this.status,
        responsecode: responsecode ?? this.responsecode,
        message: message ?? this.message,
        data: data ?? this.data,
      );

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
  String? name;
  String? mobile;
  String? password;
  String? profileImagelink;
  String? emailid;
  bool? ismobileverified;
  List<dynamic>? token;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? id;
  int? v;

  Data({
    this.name,
    this.mobile,
    this.password,
    this.profileImagelink,
    this.emailid,
    this.ismobileverified,
    this.token,
    this.createdAt,
    this.updatedAt,
    this.id,
    this.v,
  });

  Data copyWith({
    String? name,
    String? mobile,
    String? password,
    String? profileImagelink,
    String? emailid,
    bool? ismobileverified,
    List<dynamic>? token,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? id,
    int? v,
  }) =>
      Data(
        name: name ?? this.name,
        mobile: mobile ?? this.mobile,
        password: password ?? this.password,
        profileImagelink: profileImagelink ?? this.profileImagelink,
        emailid: emailid ?? this.emailid,
        ismobileverified: ismobileverified ?? this.ismobileverified,
        token: token ?? this.token,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        id: id ?? this.id,
        v: v ?? this.v,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        mobile: json["mobile"],
        password: json["Password"],
        profileImagelink: json["ProfileImagelink"],
        emailid: json["emailid"],
        ismobileverified: json["ismobileverified"],
        token: json["token"] == null
            ? []
            : List<dynamic>.from(json["token"]!.map((x) => x)),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        id: json["_id"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "mobile": mobile,
        "Password": password,
        "ProfileImagelink": profileImagelink,
        "emailid": emailid,
        "ismobileverified": ismobileverified,
        "token": token == null ? [] : List<dynamic>.from(token!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "_id": id,
        "__v": v,
      };

  Map<String, String> toRegsterJson() => {
        "name": name.toString(),
        "mobile": mobile.toString(),
        "Password": password.toString(),
        "emailid": emailid.toString(),
      };
}
