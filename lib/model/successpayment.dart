class SuccessPaymentMoel {
  String shopId;
  String? id;
  String productID;
  String userID;
  String from;
  String to;
  String image;
  String amount;
  String productName;
  String quantity;
  String status;

  SuccessPaymentMoel(
      {required this.amount,
      required this.quantity,
      required this.userID,
      required this.status,
      required this.from,
      this.id,
      required this.image,
      required this.productID,
      required this.productName,
      required this.to,
      required this.shopId});
  Map<String, dynamic> tojson(id) => {
        "status": status,
        "quantity": quantity,
        "transactionId": shopId,
        "id": id,
        "productID": productID,
        "userID": userID,
        "from": from,
        "to": to,
        "image": image,
        "amount": amount,
        "productName": productName
      };
  factory SuccessPaymentMoel.fromJson(Map<String, dynamic> json) =>
      SuccessPaymentMoel(
        userID: json["userID"],
        quantity: json["quantity"],
        status: json["status"],
        amount: json["amount"],
        from: json["from"],
        id: json["id"],
        image: json["image"],
        productID: json["productID"],
        productName: json["productName"],
        to: json["to"],
        shopId: json["transactionId"],
      );
}
