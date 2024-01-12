// To parse this JSON data, do
//
//     final signupModel = signupModelFromJson(jsonString);

import 'dart:convert';

SignupModel signupModelFromJson(String str) => SignupModel.fromJson(json.decode(str));

String signupModelToJson(SignupModel data) => json.encode(data.toJson());

class SignupModel {
    int responseCode;
    bool status;
    String message;
    Data data;

    SignupModel({
        required this.responseCode,
        required this.status,
        required this.message,
        required this.data,
    });

    factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    int patientId;
    String name;
    String mobileNo;
    String emailId;
    String gender;
    String height;
    String weight;
    String address;
    String dob;
    String profileImagelink;
    bool termsApproved;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    Data({
        required this.patientId,
        required this.name,
        required this.mobileNo,
        required this.emailId,
        required this.gender,
        required this.height,
        required this.weight,
        required this.address,
        required this.dob,
        required this.profileImagelink,
        required this.termsApproved,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        patientId: json["patient_id"],
        name: json["name"],
        mobileNo: json["mobile_no"],
        emailId: json["email_id"],
        gender: json["gender"],
        height: json["height"],
        weight: json["weight"],
        address: json["address"],
        dob: json["dob"],
        profileImagelink: json["profile_imagelink"],
        termsApproved: json["terms_approved"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "name": name,
        "mobile_no": mobileNo,
        "email_id": emailId,
        "gender": gender,
        "height": height,
        "weight": weight,
        "address": address,
        "dob": dob,
        "profile_imagelink": profileImagelink,
        "terms_approved": termsApproved,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}
