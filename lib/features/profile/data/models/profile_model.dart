// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    bool status;
    int responsecode;
    String message;
    Data data;

    ProfileModel({
        required this.status,
        required this.responsecode,
        required this.message,
        required this.data,
    });

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    int id;
    String name;
    String emailId;
    String mobileNo;
    String dob;
    Address address;
    String profileImagelink;
    String kitId;
    String bloodGroup;
    String deviceId;
    String diseases;
    DateTime createdAt;
    DateTime updatedAt;
    String previousRecord;
    String height;
    String gender;
    String weight;
    bool termsApproved;

    Data({
        required this.id,
        required this.name,
        required this.emailId,
        required this.mobileNo,
        required this.dob,
        required this.address,
        required this.profileImagelink,
        required this.kitId,
        required this.bloodGroup,
        required this.deviceId,
        required this.diseases,
        required this.createdAt,
        required this.updatedAt,
        required this.previousRecord,
        required this.height,
        required this.gender,
        required this.weight,
        required this.termsApproved,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        name: json["name"],
        emailId: json["email_id"],
        mobileNo: json["mobile_no"],
        dob: json["dob"],
        address: Address.fromJson(json["address"]),
        profileImagelink: json["profile_imagelink"],
        kitId: json["kit_id"],
        bloodGroup: json["bloodGroup"],
        deviceId: json["device_id"],
        diseases: json["diseases"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        previousRecord: json["previous_record"],
        height: json["height"],
        gender: json["gender"],
        weight: json["weight"],
        termsApproved: json["terms_approved"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email_id": emailId,
        "mobile_no": mobileNo,
        "dob": dob,
        "address": address.toJson(),
        "profile_imagelink": profileImagelink,
        "kit_id": kitId,
        "bloodGroup": bloodGroup,
        "device_id": deviceId,
        "diseases": diseases,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "previous_record": previousRecord,
        "height": height,
        "gender": gender,
        "weight": weight,
        "terms_approved": termsApproved,
    };
}

class Address {
    Address();

    factory Address.fromJson(Map<String, dynamic> json) => Address(
    );

    Map<String, dynamic> toJson() => {
    };
}
