import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';

class Controller with ChangeNotifier {
  bool isImageLoading1 = false;
  bool isImageLoading2 = false;
  String? selectedType;
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

  //--------------------------clear data in image
  clearImage() {
    productImage1 = null;
    productImage2 = null;
    notifyListeners();
  }
}
