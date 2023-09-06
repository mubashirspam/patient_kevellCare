// To parse this JSON data, do
//
//     final updateAppoinmentsPayload = updateAppoinmentsPayloadFromJson(jsonString);

import 'dart:convert';

String updateAppoinmentsPayloadToJson(UpdateAppoinmentsPayload data) =>
    json.encode(data.toJson());

class UpdateAppoinmentsPayload {
  int? id;
  DateTime? appointmentdate;
  String? endtime;
  String? starttime;
  String? remark;

  UpdateAppoinmentsPayload({
    this.id,
    this.appointmentdate,
    this.endtime,
    this.starttime,
    this.remark,
  });

  Map<String, dynamic> toJson() => {
        "_id": id,
        "appointmentdate":
            "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "appointmentendtime": endtime,
        "appointmentstarttime": starttime,
        "Reasonformeetingdoctor": remark,
      };
}
