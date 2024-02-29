

class FetchReportPayload {
    int? patientId;
    DateTime? fromDate;
    DateTime? toDate;

    FetchReportPayload({
        this.patientId,
        this.fromDate,
        this.toDate,
    });



    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "from_date": "${fromDate!.year.toString().padLeft(4, '0')}-${fromDate!.month.toString().padLeft(2, '0')}-${fromDate!.day.toString().padLeft(2, '0')}",
        "to_date": "${toDate!.year.toString().padLeft(4, '0')}-${toDate!.month.toString().padLeft(2, '0')}-${toDate!.day.toString().padLeft(2, '0')}",
    };
}
