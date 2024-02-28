// To parse this JSON data, do
//
//     final createRatingPayload = createRatingPayloadFromJson(jsonString);

import 'dart:convert';

CreateRatingPayload createRatingPayloadFromJson(String str) => CreateRatingPayload.fromJson(json.decode(str));

String createRatingPayloadToJson(CreateRatingPayload data) => json.encode(data.toJson());

class CreateRatingPayload {
    int patientId;
    int appoinmentId;
    int rating;
    String review;

    CreateRatingPayload({
        required this.patientId,
        required this.appoinmentId,
        required this.rating,
        required this.review,
    });

    factory CreateRatingPayload.fromJson(Map<String, dynamic> json) => CreateRatingPayload(
        patientId: json["patient_id"],
        appoinmentId: json["appoinment_id"],
        rating: json["rating"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "appoinment_id": appoinmentId,
        "rating": rating,
        "review": review,
    };
}
