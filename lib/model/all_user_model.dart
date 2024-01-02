class AllUserModel {
  String userId;
  String type;
  String email;
  AllUserModel({required this.email, required this.type, required this.userId});

  Map<String, dynamic> toJson() =>
      {"userId": userId, "email": email, "type": type};
  factory AllUserModel.fromJson(Map<String, dynamic> json) => AllUserModel(
      email: json["email"], type: json["type"], userId: json["userId"]);
}
