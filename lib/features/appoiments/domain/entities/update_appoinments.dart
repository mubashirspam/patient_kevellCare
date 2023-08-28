// To parse this JSON data, do
//
//     final updateAppoinmentsPayload = updateAppoinmentsPayloadFromJson(jsonString);

import 'dart:convert';

String updateAppoinmentsPayloadToJson(UpdateAppoinmentsPayload data) =>
    json.encode(data.toJson());

class UpdateAppoinmentsPayload {
  String? id;
  DateTime? starttime;
  DateTime? endtime;
  String? dailylimitcount;
  String? timeperPatient;

  UpdateAppoinmentsPayload({
    this.id,
    this.starttime,
    this.endtime,
    this.dailylimitcount,
    this.timeperPatient,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "starttime": starttime?.toIso8601String(),
        "endtime": endtime?.toIso8601String(),
        "dailylimitcount": dailylimitcount,
        "timeperPatient": timeperPatient,
      };
}
