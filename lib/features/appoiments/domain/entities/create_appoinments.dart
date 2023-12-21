// To parse this JSON data, do
//
//     final appoinmentsPayload = appoinmentsPayloadFromJson(jsonString);

import 'dart:convert';



String appoinmentsPayloadToJson(AppoinmentsPayload data) => json.encode(data.toJson());

class AppoinmentsPayload {
    int? patientId;
    String? reasonFormeetingDoctor;
    int? doctorId;
    String? doctorname;
    String? appointmentLocation;
    DateTime? appointmentDate;
    DateTime? appointmentEndtime;
    DateTime? appointmentStarttime;
    String? specialist;
    int? apptToken;
    int? amount;
    String? currency;
    bool? partialPayment;
    Notes? notes;

    AppoinmentsPayload({
        this.patientId,
        this.reasonFormeetingDoctor,
        this.doctorId,
        this.doctorname,
        this.appointmentLocation,
        this.appointmentDate,
        this.appointmentEndtime,
        this.appointmentStarttime,
        this.specialist,
        this.apptToken,
        this.amount,
        this.currency,
        this.partialPayment,
        this.notes,
    });

    AppoinmentsPayload copyWith({
        int? patientId,
        String? reasonFormeetingDoctor,
        int? doctorId,
        String? doctorname,
        String? appointmentLocation,
        DateTime? appointmentDate,
        DateTime? appointmentEndtime,
        DateTime? appointmentStarttime,
        String? specialist,
        int? apptToken,
        int? amount,
        String? currency,
        bool? partialPayment,
        Notes? notes,
    }) => 
        AppoinmentsPayload(
            patientId: patientId ?? this.patientId,
            reasonFormeetingDoctor: reasonFormeetingDoctor ?? this.reasonFormeetingDoctor,
            doctorId: doctorId ?? this.doctorId,
            doctorname: doctorname ?? this.doctorname,
            appointmentLocation: appointmentLocation ?? this.appointmentLocation,
            appointmentDate: appointmentDate ?? this.appointmentDate,
            appointmentEndtime: appointmentEndtime ?? this.appointmentEndtime,
            appointmentStarttime: appointmentStarttime ?? this.appointmentStarttime,
            specialist: specialist ?? this.specialist,
            apptToken: apptToken ?? this.apptToken,
            amount: amount ?? this.amount,
            currency: currency ?? this.currency,
            partialPayment: partialPayment ?? this.partialPayment,
            notes: notes ?? this.notes,
        );

    
    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "reason_formeeting_doctor": reasonFormeetingDoctor,
        "doctor_id": doctorId,
        "doctorname": doctorname,
        "appointment_location": appointmentLocation,
        "appointment_date": "${appointmentDate!.year.toString().padLeft(4, '0')}-${appointmentDate!.month.toString().padLeft(2, '0')}-${appointmentDate!.day.toString().padLeft(2, '0')}",
        "appointment_endtime": appointmentEndtime?.toIso8601String(),
        "appointment_starttime": appointmentStarttime?.toIso8601String(),
        "specialist": specialist,
        "appt_token": apptToken,
        "amount": amount,
        "currency": currency,
        "partial_payment": partialPayment,
        "notes": notes?.toJson(),
    };
}

class Notes {
    String? key1;
    String? key2;

    Notes({
        this.key1,
        this.key2,
    });

    Notes copyWith({
        String? key1,
        String? key2,
    }) => 
        Notes(
            key1: key1 ?? this.key1,
            key2: key2 ?? this.key2,
        );

  

    Map<String, dynamic> toJson() => {
        "key1": key1,
        "key2": key2,
    };
}
