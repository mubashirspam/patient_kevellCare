// To parse this JSON data, do
//
//     final appoimentModel = appoimentModelFromJson(jsonString);

import 'dart:convert';

AppoimentModel appoimentModelFromJson(String str) => AppoimentModel.fromJson(json.decode(str));

String appoimentModelToJson(AppoimentModel data) => json.encode(data.toJson());

class AppoimentModel {
    int? responseCode;
    bool? success;
    Data? data;

    AppoimentModel({
        this.responseCode,
        this.success,
        this.data,
    });

    AppoimentModel copyWith({
        int? responseCode,
        bool? success,
        Data? data,
    }) => 
        AppoimentModel(
            responseCode: responseCode ?? this.responseCode,
            success: success ?? this.success,
            data: data ?? this.data,
        );

    factory AppoimentModel.fromJson(Map<String, dynamic> json) => AppoimentModel(
        responseCode: json["responseCode"],
        success: json["success"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "success": success,
        "data": data?.toJson(),
    };
}

class Data {
    List<Appointment>? upcomingdata;
    List<Appointment>? past;

    Data({
        this.upcomingdata,
        this.past,
    });

    Data copyWith({
        List<Appointment>? upcomingdata,
        List<Appointment>? past,
    }) => 
        Data(
            upcomingdata: upcomingdata ?? this.upcomingdata,
            past: past ?? this.past,
        );

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        upcomingdata: json["upcomingdata"] == null ? [] : List<Appointment>.from(json["upcomingdata"]!.map((x) => Appointment.fromJson(x))),
        past: json["past"] == null ? [] : List<Appointment>.from(json["past"]!.map((x) => Appointment.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "upcomingdata": upcomingdata == null ? [] : List<dynamic>.from(upcomingdata!.map((x) => x.toJson())),
        "past": past == null ? [] : List<dynamic>.from(past!.map((x) => x.toJson())),
    };
}

class Appointment {
    int? id;
    int? patientId;
    String? patientPid;
    String? patientname;
    DateTime? appointmentStarttime;
    DateTime? appointmentEndtime;
    int? doctorId;
    String? doctorname;
    DateTime? appointmentDate;
    bool? isvisited;
    bool? isTimeup;
    int? userDoctorrating;
    String? userDoctorcommand;
    int? sno;
    Doctordata? doctordata;
    String? reasonFormeetingDoctor;
    String? appointmentLocation;

    Appointment({
        this.id,
        this.patientId,
        this.patientPid,
        this.patientname,
        this.appointmentStarttime,
        this.appointmentEndtime,
        this.doctorId,
        this.doctorname,
        this.appointmentDate,
        this.isvisited,
        this.isTimeup,
        this.userDoctorrating,
        this.userDoctorcommand,
        this.sno,
        this.doctordata,
        this.reasonFormeetingDoctor,
        this.appointmentLocation,
    });

    Appointment copyWith({
        int? id,
        int? patientId,
        String? patientPid,
        String? patientname,
        DateTime? appointmentStarttime,
        DateTime? appointmentEndtime,
        int? doctorId,
        String? doctorname,
        DateTime? appointmentDate,
        bool? isvisited,
        bool? isTimeup,
        int? userDoctorrating,
        String? userDoctorcommand,
        int? sno,
        Doctordata? doctordata,
        String? reasonFormeetingDoctor,
        String? appointmentLocation,
    }) => 
        Appointment(
            id: id ?? this.id,
            patientId: patientId ?? this.patientId,
            patientPid: patientPid ?? this.patientPid,
            patientname: patientname ?? this.patientname,
            appointmentStarttime: appointmentStarttime ?? this.appointmentStarttime,
            appointmentEndtime: appointmentEndtime ?? this.appointmentEndtime,
            doctorId: doctorId ?? this.doctorId,
            doctorname: doctorname ?? this.doctorname,
            appointmentDate: appointmentDate ?? this.appointmentDate,
            isvisited: isvisited ?? this.isvisited,
            isTimeup: isTimeup ?? this.isTimeup,
            userDoctorrating: userDoctorrating ?? this.userDoctorrating,
            userDoctorcommand: userDoctorcommand ?? this.userDoctorcommand,
            sno: sno ?? this.sno,
            doctordata: doctordata ?? this.doctordata,
            reasonFormeetingDoctor: reasonFormeetingDoctor ?? this.reasonFormeetingDoctor,
            appointmentLocation: appointmentLocation ?? this.appointmentLocation,
        );

    factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
        id: json["_id"],
        patientId: json["patient_id"],
        patientPid: json["patient_pid"],
        patientname: json["patientname"],
        appointmentStarttime: json["appointment_starttime"] == null ? null : DateTime.parse(json["appointment_starttime"]),
        appointmentEndtime: json["appointment_endtime"] == null ? null : DateTime.parse(json["appointment_endtime"]),
        doctorId: json["doctor_id"],
        doctorname: json["doctorname"],
        appointmentDate: json["appointment_date"] == null ? null : DateTime.parse(json["appointment_date"]),
        isvisited: json["isvisited"],
        isTimeup: json["is_timeup"],
        userDoctorrating: json["user_doctorrating"],
        userDoctorcommand: json["user_doctorcommand"],
        sno: json["sno"],
        doctordata: json["doctordata"] == null ? null : Doctordata.fromJson(json["doctordata"]),
        reasonFormeetingDoctor: json["reason_formeeting_doctor"],
        appointmentLocation: json["appointment_location"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "patient_id": patientId,
        "patient_pid": patientPid,
        "patientname": patientname,
        "appointment_starttime": appointmentStarttime?.toIso8601String(),
        "appointment_endtime": appointmentEndtime?.toIso8601String(),
        "doctor_id": doctorId,
        "doctorname": doctorname,
        "appointment_date": "${appointmentDate!.year.toString().padLeft(4, '0')}-${appointmentDate!.month.toString().padLeft(2, '0')}-${appointmentDate!.day.toString().padLeft(2, '0')}",
        "isvisited": isvisited,
        "is_timeup": isTimeup,
        "user_doctorrating": userDoctorrating,
        "user_doctorcommand": userDoctorcommand,
        "sno": sno,
        "doctordata": doctordata?.toJson(),
        "reason_formeeting_doctor": reasonFormeetingDoctor,
        "appointment_location": appointmentLocation,
    };
}

class Doctordata {
    int? doctorId;
    int? dailyLimitCount;
    String? startTime;
    String? endTime;
    int? timePerPatient;

    Doctordata({
        this.doctorId,
        this.dailyLimitCount,
        this.startTime,
        this.endTime,
        this.timePerPatient,
    });

    Doctordata copyWith({
        int? doctorId,
        int? dailyLimitCount,
        String? startTime,
        String? endTime,
        int? timePerPatient,
    }) => 
        Doctordata(
            doctorId: doctorId ?? this.doctorId,
            dailyLimitCount: dailyLimitCount ?? this.dailyLimitCount,
            startTime: startTime ?? this.startTime,
            endTime: endTime ?? this.endTime,
            timePerPatient: timePerPatient ?? this.timePerPatient,
        );

    factory Doctordata.fromJson(Map<String, dynamic> json) => Doctordata(
        doctorId: json["doctor_id"],
        dailyLimitCount: json["daily_limit_count"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        timePerPatient: json["time_per_patient"],
    );

    Map<String, dynamic> toJson() => {
        "doctor_id": doctorId,
        "daily_limit_count": dailyLimitCount,
        "start_time": startTime,
        "end_time": endTime,
        "time_per_patient": timePerPatient,
    };
}
