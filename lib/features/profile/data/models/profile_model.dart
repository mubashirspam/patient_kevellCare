// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  bool? status;
  int? responsecode;
  String? message;
  Data? data;

  ProfileModel({
    this.status,
    this.responsecode,
    this.message,
    this.data,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
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
  int? id;
  String? name;
  String? emailId;
  String? mobileNo;
  DateTime? dob;
  Address? address;
  String? profileImagelink;
  String? kitId;
  String? bloodgroup;
  String? deviceId;
  String? diseases;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? previousRecord;
  String? height;
  String? gender;
  String? weight;
  bool? termsApproved;
  int? v;

  Data({
    this.id,
    this.name,
    this.emailId,
    this.mobileNo,
    this.dob,
    this.address,
    this.profileImagelink,
    this.kitId,
    this.bloodgroup,
    this.deviceId,
    this.diseases,
    this.createdAt,
    this.updatedAt,
    this.previousRecord,
    this.height,
    this.gender,
    this.weight,
    this.termsApproved,
    this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        name: json["name"],
        emailId: json["email_id"],
        mobileNo: json["mobile_no"],
        dob: json["dob"] == null || json["dob"] == ""
            ? null
            : DateTime.parse(json["dob"]),
        address: json["address"] == null || json["address"] == {}
            ? null
            : Address.fromJson(json["address"]),
        profileImagelink: json["profile_imagelink"],
        kitId: json["kit_id"],
        bloodgroup: json["bloodgroup"],
        deviceId: json["device_id"],
        diseases: json["diseases"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        previousRecord: json["previous_record"],
        height: json["height"],
        gender: json["gender"],
        weight: json["weight"],
        termsApproved: json["terms_approved"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "mobile_no": mobileNo,
        "dob": dob?.toIso8601String(),
        "address": address?.toJson(),
        "kit_id": kitId,
        "bloodgroup": bloodgroup,
        "height": height,
        "gender": gender,
        "weight": weight,
      };
}

class Address {
  String? street;
  String? city;
  String? state;
  String? zipCode;
  String? district;

  Address({
    this.street,
    this.city,
    this.state,
    this.zipCode,
    this.district,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        zipCode: json["zipCode"],
        district: json["district"],
      );

  Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "zipCode": zipCode,
        "district": district,
      };
}
