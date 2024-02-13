

class AppointmentsPayload {
    int? patientId;
    String? reasonFormeetingDoctor;
    int? doctorId;
    DateTime? appointmentStarttime;
    DateTime? appointmentEndtime;
    DateTime? appointmentDate;
    int? apptToken;
    int? amount;

    AppointmentsPayload({
        this.patientId,
        this.reasonFormeetingDoctor,
        this.doctorId,
        this.appointmentStarttime,
        this.appointmentEndtime,
        this.appointmentDate,
        this.apptToken,
        this.amount,
    });

  

    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "reason_formeeting_doctor": reasonFormeetingDoctor,
        "doctor_id": doctorId,
        "appointment_starttime": appointmentStarttime?.toIso8601String(),
        "appointment_endtime": appointmentEndtime?.toIso8601String(),
        "appointment_date": "${appointmentDate!.year.toString().padLeft(4, '0')}-${appointmentDate!.month.toString().padLeft(2, '0')}-${appointmentDate!.day.toString().padLeft(2, '0')}",
        "appt_token": apptToken,
        "amount": amount,
    };
}
