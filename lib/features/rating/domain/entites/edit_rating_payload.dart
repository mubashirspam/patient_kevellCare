// To parse this JSON data, do
//
//     final editRatingPayload = editRatingPayloadFromJson(jsonString);

import 'dart:convert';

EditRatingPayload editRatingPayloadFromJson(String str) => EditRatingPayload.fromJson(json.decode(str));

String editRatingPayloadToJson(EditRatingPayload data) => json.encode(data.toJson());

class EditRatingPayload {
    int id;
    int rating;
    String review;

    EditRatingPayload({
        required this.id,
        required this.rating,
        required this.review,
    });

    factory EditRatingPayload.fromJson(Map<String, dynamic> json) => EditRatingPayload(
        id: json["id"],
        rating: json["rating"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "rating": rating,
        "review": review,
    };
}
