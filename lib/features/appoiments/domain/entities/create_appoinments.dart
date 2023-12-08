// To parse this JSON data, do
//
//     final appoinmentsPayload = appoinmentsPayloadFromJson(jsonString);

import 'dart:convert';



String appoinmentsPayloadToJson(AppoinmentsPayload data) => json.encode(data.toJson());

class AppoinmentsPayload {
    int? patientId;
    String? reasonformeetingdoctor;
    int? doctornameid;
    String? doctorname;
    String? appointmentlocation;
    

    DateTime? appointmentdate;
    String? appointmentendtime;
    String? appointmentstarttime;

    AppoinmentsPayload({
        this.patientId,
        this.reasonformeetingdoctor,
        this.doctornameid,
        this.doctorname,
        this.appointmentlocation,
        this.appointmentdate,
        this.appointmentendtime,
        this.appointmentstarttime,
    });


    Map<String, dynamic> toJson() => {
        "patientId": patientId,
        "Reasonformeetingdoctor": reasonformeetingdoctor,
        "doctornameid": doctornameid,
        "doctorname": doctorname,
        "appointmentlocation": appointmentlocation,
        "appointmentdate": "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "appointmentendtime": appointmentendtime,
        "appointmentstarttime": appointmentstarttime,
        "specialist":"Dentist"
    };
}


