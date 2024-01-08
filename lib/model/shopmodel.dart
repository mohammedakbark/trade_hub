class ShopDataModel {
  String shopID;
  String type;
  String shopNmae;
  String email;
  String biography;
  String country;
  String phoneNumber;
  String legalBusinessName;
  String address1;
  String address2;
  String city;
  String pincode;
  String country2;
  String state;
  String tagImage;
  String shopImage;
  String upiID;

  ShopDataModel(
      {required this.address1,
      required this.upiID,
      required this.tagImage,
      required this.shopImage,
      required this.type,
      required this.address2,
      required this.biography,
      required this.city,
      required this.country,
      required this.country2,
      required this.email,
      required this.legalBusinessName,
      required this.phoneNumber,
      required this.pincode,
      required this.shopID,
      required this.shopNmae,
      required this.state});

  Map<String, dynamic> toJson() => {
        "tagImage": tagImage,
        "shopImage": shopImage,
        "upiID":upiID,
        "shopID": shopID,
        "type": type,
        "shopNmae": shopNmae,
        "email": email,
        "biography": biography,
        "country": country,
        "phoneNumber": phoneNumber,
        "legalBusinessName": legalBusinessName,
        "address1": address1,
        "address2": address2,
        "city": city,
        "pincode": pincode,
        "country2": country2,
        "state": state,
      };
  factory ShopDataModel.fromJson(Map<String, dynamic> json) => ShopDataModel(
      type: json["type"],
      upiID:json["upiID"],
      tagImage: json["tagImage"],
      shopImage: json["shopImage"],
      address1: json["address1"],
      address2: json["address2"],
      biography: json["biography"],
      city: json["city"],
      country: json["country"],
      country2: json["country2"],
      email: json["email"],
      legalBusinessName: json["legalBusinessName"],
      phoneNumber: json["phoneNumber"],
      pincode: json["pincode"],
      shopID: json["shopID"],
      shopNmae: json["shopNmae"],
      state: json["state"]);
}
