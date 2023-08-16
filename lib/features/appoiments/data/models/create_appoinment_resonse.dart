// To parse this JSON data, do
//
//     final createResponse = createResponseFromJson(jsonString);

import 'dart:convert';

CreateResponse createResponseFromJson(String str) => CreateResponse.fromJson(json.decode(str));

String createResponseToJson(CreateResponse data) => json.encode(data.toJson());

class CreateResponse {
    bool? status;
    int? responsecode;
    String? message;
    Data? data;

    CreateResponse({
        this.status,
        this.responsecode,
        this.message,
        this.data,
    });

    factory CreateResponse.fromJson(Map<String, dynamic> json) => CreateResponse(
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
    int? result;

    Data({
        this.result,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        result: json["Result"],
    );

    Map<String, dynamic> toJson() => {
        "Result": result,
    };
}
