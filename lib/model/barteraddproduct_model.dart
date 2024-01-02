class BarterAddProductModel {
  String? productID;
  String userID;
  String image1;
  String image2;
  String productName;
  String details;
  String whatsappNumber;
  String productType;
  String location;
  String username;

  BarterAddProductModel(
      {required this.details,
      required this.image1,
      required this.image2,
      required this.username,
      this.productID,
      required this.productName,
      required this.productType,
      required this.userID,
      required this.whatsappNumber,
      required this.location});

  Map<String, dynamic> tojson(id) => {
        "productID": id,
        "username": username,
        "userID": userID,
        "image1": image1,
        "image2": image2,
        "productName": productName,
        "details": details,
        "whatsappNumber": whatsappNumber,
        "productType": productType,
        "location": location
      };

  factory BarterAddProductModel.fromJson(Map<String, dynamic> json) =>
      BarterAddProductModel(
          username: json["username"],
          details: json["details"],
          image1: json["image1"],
          image2: json["image2"],
          location: json["location"],
          productID: json["productID"],
          productName: json["productName"],
          productType: json["productType"],
          userID: json["userID"],
          whatsappNumber: json["whatsappNumber"]);
}
