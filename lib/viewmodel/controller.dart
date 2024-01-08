import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trade_hub/model/addProductShopModel.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';

class Controller with ChangeNotifier {
  List<AddProductShopModel>? allProductData = [];
  int totalprice = 0000;

  //---------------button for quantity of procut
  int counter = 0;
  bool isAddIconPressed = false;
  bool isRemoveIconPressed = false;

  void incrementCounter(price, deliveryfee) {
    counter++;
    isAddIconPressed = true;
    isRemoveIconPressed = false;
    totalprice = (price * counter) + deliveryfee;
    print(totalprice);
    notifyListeners();
  }

  void decrementCounter(int price, int deliveryfee) {
    if (counter > 0) {
      counter--;
      isAddIconPressed = false;
      isRemoveIconPressed = true;
      totalprice = (totalprice - price);
      if (totalprice == deliveryfee) {
        totalprice = 0;
      }
      notifyListeners();
    }
  }

  clearData() {
    totalprice = 0;
    counter = 0;
    notifyListeners();
  }

/////////////////
  bool isImageLoading1 = false;
  bool isImageLoading2 = false;
  bool isImageLoadingShop = false;
  String? selectedType;
  String? selectedDelivery;
  String? isInStock;
  selectedValue(value) {
    selectedType = value;
    notifyListeners();
  }

//---------------------------------------Country----------------------------------------------------------

  String? pickedDate;
  Country selectedCountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: 'India',
      displayName: 'India',
      displayNameNoCountryCode: "IN",
      e164Key: "");

  showCountries(context) {
    showCountryPicker(
      context: context,
      countryListTheme: const CountryListThemeData(bottomSheetHeight: 600),
      onSelect: (value) {
        selectedCountry = value;
      },
    );
    notifyListeners();
  }

//-------------------------------------profileImage
  final firbaseStorage = FirebaseStorage.instance;
  final db = FirebaseFirestore.instance;
  File? profileImage;
  Future addProfileImage() async {
    DocumentReference docUpdateRef =
        db.collection('user').doc(FirebaseAuth.instance.currentUser!.uid);
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    if (pickedFile != null) {
      final currenttime = TimeOfDay.now();
      profileImage = File(pickedFile.path);
      UploadTask uploadTask = firbaseStorage
          .ref()
          .child("profileImage/User$currenttime")
          .putFile(profileImage!, metadata);
      TaskSnapshot snapshot = await uploadTask;
      String downloadURL = await snapshot.ref.getDownloadURL();
      docUpdateRef.update({"profileImage": downloadURL}).then(
          (value) => noti("Profile Image Updated"));

      notifyListeners();
      return downloadURL;
    }
  }

//------------------------------------------productImage
//------------------------1------------------
  File? productImage1;
  String? productImageURL1;
  Future addProductImage1() async {
    isImageLoading1 = true;
    notifyListeners();
    // DocumentReference docUpdateRef =
    //     db.collection('user').doc(FirebaseAuth.instance.currentUser!.uid);
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    if (pickedFile != null) {
      final currenttime = TimeOfDay.now();
      productImage1 = File(pickedFile.path);
      UploadTask uploadTask = firbaseStorage
          .ref()
          .child("UserAddedProductImage/User$currenttime")
          .putFile(productImage1!, metadata);
      TaskSnapshot snapshot = await uploadTask;
      productImageURL1 = await snapshot.ref.getDownloadURL();
      // docUpdateRef.update({"profileImage": downloadURL}).then(
      //     (value) => noti("Profile Image Updated"));
      isImageLoading1 = false;
      notifyListeners();
      return productImageURL1;
    }
  }

  //-----------------------------2------------------------
  File? productImage2;
  String? productImageURL2;
  Future addProductImage2() async {
    isImageLoading2 = true;
    notifyListeners();
    // DocumentReference docUpdateRef =
    //     db.collection('user').doc(FirebaseAuth.instance.currentUser!.uid);
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    if (pickedFile != null) {
      final currenttime = TimeOfDay.now();
      productImage2 = File(pickedFile.path);
      UploadTask uploadTask = firbaseStorage
          .ref()
          .child("UserAddedProductImage/User$currenttime")
          .putFile(productImage2!, metadata);
      TaskSnapshot snapshot = await uploadTask;
      productImageURL2 = await snapshot.ref.getDownloadURL();
      // docUpdateRef.update({"profileImage": downloadURL}).then(
      //     (value) => noti("Profile Image Updated"));
      isImageLoading2 = false;
      notifyListeners();
      return productImageURL2;
    }
  }

  //++++++++++++++++++++shop+++++++++++++++++++++
  File? shopProductImage;
  String? shopProductImageURL;
  Future addProductImageShop() async {
    isImageLoadingShop = true;
    notifyListeners();
    // DocumentReference docUpdateRef =
    //     db.collection('user').doc(FirebaseAuth.instance.currentUser!.uid);
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    if (pickedFile != null) {
      final currenttime = TimeOfDay.now();
      shopProductImage = File(pickedFile.path);
      UploadTask uploadTask = firbaseStorage
          .ref()
          .child("ShopAddedProductImage/Shop$currenttime")
          .putFile(shopProductImage!, metadata);
      TaskSnapshot snapshot = await uploadTask;
      shopProductImageURL = await snapshot.ref.getDownloadURL();
      // docUpdateRef.update({"profileImage": downloadURL}).then(
      //     (value) => noti("Profile Image Updated"));
      isImageLoadingShop = false;
      notifyListeners();
      return shopProductImageURL;
    }
  }

//--
  File? shopImage;
  String? shopImageURL;
  Future addShopImage() async {
    isImageLoadingShop = true;
    notifyListeners();
    // DocumentReference docUpdateRef =
    //     db.collection('user').doc(FirebaseAuth.instance.currentUser!.uid);
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    if (pickedFile != null) {
      final currenttime = TimeOfDay.now();
      shopImage = File(pickedFile.path);
      UploadTask uploadTask = firbaseStorage
          .ref()
          .child("ShopImage/Shop$currenttime")
          .putFile(shopImage!, metadata);
      TaskSnapshot snapshot = await uploadTask;
      shopImageURL = await snapshot.ref.getDownloadURL();
      // docUpdateRef.update({"profileImage": downloadURL}).then(
      //     (value) => noti("Profile Image Updated"));
      isImageLoadingShop = false;
      notifyListeners();
      return shopImageURL;
    }
  }

  //==
  File? shopTagImage;
  String? shopTagImageURL;
  Future addTagImageShop() async {
    isImageLoadingShop = true;
    notifyListeners();
    // DocumentReference docUpdateRef =
    //     db.collection('user').doc(FirebaseAuth.instance.currentUser!.uid);
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    if (pickedFile != null) {
      final currenttime = TimeOfDay.now();
      shopTagImage = File(pickedFile.path);
      UploadTask uploadTask = firbaseStorage
          .ref()
          .child("shopTagImage/Shop$currenttime")
          .putFile(shopTagImage!, metadata);
      TaskSnapshot snapshot = await uploadTask;
      shopTagImageURL = await snapshot.ref.getDownloadURL();
      // docUpdateRef.update({"profileImage": downloadURL}).then(
      //     (value) => noti("Profile Image Updated"));
      isImageLoadingShop = false;
      notifyListeners();
      return shopTagImageURL;
    }
  }

  //--------------------------clear data in image
  clearImage() {
    productImage1 = null;
    productImage2 = null;
    notifyListeners();
  }
}
