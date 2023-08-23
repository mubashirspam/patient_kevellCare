// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    bool? status;
    int? responsecode;
    String? message;
    List<Datum>? data;

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
    String? address;
    DateTime? dob;
    String? name;

    Datum({
        this.id,
        this.username,
        this.mobile,
        this.address,
        this.dob,
        this.name,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        username: json["Username"],
        mobile: json["mobile"],
        address: json["Address"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "Username": username,
        "mobile": mobile,
        "Address": address,
        "dob": dob?.toIso8601String(),
        "name": name,
    };
}
