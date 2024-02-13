

class PaymentPayload {
    int? amount;
    String? name;
    String? orderId;
    String? appoinmentId;
    String? contact;
    String? email;
    String? id;

    PaymentPayload({
        this.amount,
        this.name,
        this.orderId,
        this.appoinmentId,
        this.contact,
        this.email,
        this.id,
    });

    

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "name": name,
        "order_id": orderId,
        "appoinment_id": appoinmentId,
        "contact": contact,
        "email": email,
        "id": id,
    };
}
