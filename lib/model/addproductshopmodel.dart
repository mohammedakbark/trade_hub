class AddProductShopModel {
  String? productId;
  String shopId;
  String productImage;
  String productName;
  String productDescription;
  String amount;
  String isFreeDelivery;
  String isInStock;

  String shopName;
  String upiID;

  //----------selectVarient
  String varient1title;
  String varient1detail;
//--
  String varient2title;
  String varient2detail;

//--------------add higligt
  String? highlight1Image;
  String? highlight2Image;
  String? highlight3Image;
  String? highlight4Image;
  String? highlight5Image;
//--
  String highlightHead1;
  String highlightHead2;
  String highlightHead3;
  String highlightHead4;
  String highlightHead5;
  //--
  String highlightText1;
  String highlightText2;
  String highlightText3;
  String highlightText4;
  String highlightText5;

  //--------------add other detail
  String? otherDetail1Image;
  String? otherDetail2Image;
  String? otherDetail3Image;
  String? otherDetail4Image;
  String? otherDetail5Image;
//--
  String otherDetailHead1;
  String otherDetailHead2;
  String otherDetailHead3;
  String otherDetailHead4;
  String otherDetailHead5;
  //--
  String otherDetailText1;
  String otherDetailText2;
  String otherDetailText3;
  String otherDetailText4;
  String otherDetailText5;

  AddProductShopModel(
      {required this.amount,
      required this.shopName,
      required this.upiID,
      required this.productDescription,
      this.highlight1Image,
      this.highlight2Image,
      this.highlight3Image,
      this.highlight4Image,
      this.highlight5Image,
      required this.highlightHead1,
      required this.highlightHead2,
      required this.highlightHead3,
      required this.highlightHead4,
      required this.highlightHead5,
      required this.highlightText1,
      required this.highlightText2,
      required this.highlightText3,
      required this.highlightText4,
      required this.highlightText5,
      required this.isFreeDelivery,
      required this.isInStock,
      this.otherDetail1Image,
      this.otherDetail2Image,
      this.otherDetail3Image,
      this.otherDetail4Image,
      this.otherDetail5Image,
      required this.otherDetailHead1,
      required this.otherDetailHead2,
      required this.otherDetailHead3,
      required this.otherDetailHead4,
      required this.otherDetailHead5,
      required this.otherDetailText1,
      required this.otherDetailText2,
      required this.otherDetailText3,
      required this.otherDetailText4,
      required this.otherDetailText5,
      this.productId,
      required this.productImage,
      required this.productName,
      required this.shopId,
      required this.varient1detail,
      required this.varient1title,
      required this.varient2detail,
      required this.varient2title});

  Map<String, dynamic> toJson(id) => {
        "amount": amount,
        "upiID":upiID,
        "shopName":shopName,
        "productDescription": productDescription,
        "highlight1Image": highlight1Image ?? "",
        "highlight2Image": highlight2Image ?? "",
        "highlight3Image": highlight3Image ?? "",
        "highlight4Image": highlight4Image ?? "",
        "highlight5Image": highlight5Image ?? "",
        "highlightHead1": highlightHead1,
        "highlightHead2": highlightHead2,
        "highlightHead3": highlightHead3,
        "highlightHead4": highlightHead4,
        "highlightHead5": highlightHead5,
        "highlightText1": highlightText1,
        "highlightText2": highlightText2,
        "highlightText3": highlightText3,
        "highlightText4": highlightText4,
        "highlightText5": highlightText5,
        "isFreeDelivery": isFreeDelivery,
        "isInStock": isInStock,
        "otherDetail1Image": otherDetail1Image ?? "",
        "otherDetail2Image": otherDetail2Image ?? "",
        "otherDetail3Image": otherDetail3Image ?? "",
        "otherDetail4Image": otherDetail4Image ?? "",
        "otherDetail5Image": otherDetail5Image ?? "",
        "otherDetailHead1": otherDetailHead1,
        "otherDetailHead2": otherDetailHead2,
        "otherDetailHead3": otherDetailHead3,
        "otherDetailHead4": otherDetailHead4,
        "otherDetailHead5": otherDetailHead5,
        "otherDetailText1": otherDetailText1,
        "otherDetailText2": otherDetailText2,
        "otherDetailText3": otherDetailText3,
        "otherDetailText4": otherDetailText4,
        "otherDetailText5": otherDetailText5,
        "productId": id,
        "productImage": productImage,
        "productName": productName,
        "shopId": shopId,
        "varient1detail": varient1detail,
        "varient1title": varient1title,
        "varient2detail": varient2detail,
        "varient2titl": varient2title
      };

  factory AddProductShopModel.fromjson(Map<String, dynamic> json) =>
      AddProductShopModel(
        shopName:json["shopName"],
        upiID:json["upiID"],
          amount: json["amount"],
          productDescription: json["productDescription"],
          highlight1Image: json["highlight1Image"] ?? "",
          highlight2Image: json["highlight2Image"] ?? "",
          highlight3Image: json["highlight3Image"] ?? "",
          highlight4Image: json["highlight4Image"] ?? "",
          highlight5Image: json["highlight5Image"] ?? "",
          highlightHead1: json["highlightHead1"],
          highlightHead2: json["highlightHead2"],
          highlightHead3: json["highlightHead3"],
          highlightHead4: json["highlightHead4"],
          highlightHead5: json["highlightHead5"],
          highlightText1: json["highlightText1"],
          highlightText2: json["highlightText2"],
          highlightText3: json["highlightText3"],
          highlightText4: json["highlightText4"],
          highlightText5: json["highlightText5"],
          isFreeDelivery: json["isFreeDelivery"],
          isInStock: json["isInStock"],
          otherDetail1Image: json["otherDetail1Image"] ?? "",
          otherDetail2Image: json["otherDetail2Image"] ?? "",
          otherDetail3Image: json["otherDetail3Image"] ?? "",
          otherDetail4Image: json["otherDetail4Image"] ?? "",
          otherDetail5Image: json["otherDetail5Image"] ?? "",
          otherDetailHead1: json["otherDetailHead1"],
          otherDetailHead2: json["otherDetailHead2"],
          otherDetailHead3: json["otherDetailHead3"],
          otherDetailHead4: json["otherDetailHead4"],
          otherDetailHead5: json["otherDetailHead5"],
          otherDetailText1: json["otherDetailText1"],
          otherDetailText2: json["otherDetailText2"],
          otherDetailText3: json["otherDetailText3"],
          otherDetailText4: json["otherDetailText4"],
          otherDetailText5: json["otherDetailText5"],
          productId: json["productId"],
          productImage: json["productImage"],
          productName: json["productName"],
          shopId: json["shopId"],
          varient1detail: json["varient1detail"],
          varient1title: json["varient1title"],
          varient2detail: json["varient2detail"],
          varient2title: json["varient2titl"]);
}
