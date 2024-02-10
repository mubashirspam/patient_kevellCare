
import 'dart:convert';

CreateRatingPayload createRatingPayloadFromJson(String str) => CreateRatingPayload.fromJson(json.decode(str));

String createRatingPayloadToJson(CreateRatingPayload data) => json.encode(data.toJson());

class CreateRatingPayload {
    int patientId;
    int appoinmentId;
    String review;
    int rating;

    CreateRatingPayload({
        required this.patientId,
        required this.appoinmentId,
        required this.review,
        required this.rating,
    });

    factory CreateRatingPayload.fromJson(Map<String, dynamic> json) => CreateRatingPayload(
        patientId: json["patient_id"],
        appoinmentId: json["Appoinment_id"],
        review: json["review"],
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "Appoinment_id": appoinmentId,
        "review": review,
        "rating": rating,
    };
}
