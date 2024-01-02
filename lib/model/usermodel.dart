class UserModel {
  String userID;
  String email;
  String name;
  String dateOfBirth;
  String country;
  String deliveryAddress;
  String profileImage;
  UserModel(
      {required this.country,
      required this.dateOfBirth,
      required this.deliveryAddress,
      required this.email,
      required this.name,
      required this.userID,
      required this.profileImage
      
      });

  Map<String, dynamic> toJson() => {
        "userID": userID,
        "dateOfBirth": dateOfBirth,
        "email": email,
        "name": name,
        "country": country,
        "deliveryAddress": deliveryAddress,
        "profileImage":profileImage
      };
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      country: json["country"],
      dateOfBirth: json["dateOfBirth"],
      deliveryAddress: json["deliveryAddress"],
      email: json["email"],
      name: json["name"],
      userID: json["userID"],
      profileImage:json["profileImage"]);
}
