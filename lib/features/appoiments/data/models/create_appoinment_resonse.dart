

class CreateAppointment {
    int? responseCode;
    bool? status;
    String? message;
    CheckoutDetails? data;

    CreateAppointment({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory CreateAppointment.fromJson(Map<String, dynamic> json) => CreateAppointment(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : CheckoutDetails.fromJson(json["data"]),
    );

 
}

class CheckoutDetails {
    String? entityType;
    int? doctorId;
    int? patientId;
    int? appointmentId;
    int? amount;
    String? orderStatus;
    String? receiptId;
    String? currency;
    String? orderId;
    List<dynamic>? acquirerData;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? id;
    int? v;

    CheckoutDetails({
        this.entityType,
        this.doctorId,
        this.patientId,
        this.appointmentId,
        this.amount,
        this.orderStatus,
        this.receiptId,
        this.currency,
        this.orderId,
        this.acquirerData,
        this.createdAt,
        this.updatedAt,
        this.id,
        this.v,
    });

    factory CheckoutDetails.fromJson(Map<String, dynamic> json) => CheckoutDetails(
        entityType: json["entity_type"],
        doctorId: json["doctor_id"],
        patientId: json["patient_id"],
        appointmentId: json["appointment_id"],
        amount: json["amount"],
        orderStatus: json["order_status"],
        receiptId: json["receipt_id"],
        currency: json["currency"],
        orderId: json["order_id"],
        acquirerData: json["acquirer_data"] == null ? [] : List<dynamic>.from(json["acquirer_data"]!.map((x) => x)),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        id: json["_id"],
        v: json["__v"],
    );

}
