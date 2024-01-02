import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trade_hub/model/all_user_model.dart';
import 'package:trade_hub/model/barteraddproduct_model.dart';
import 'package:trade_hub/model/usermodel.dart';
import 'package:trade_hub/view/Modules/user/navigation%20bar.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';

class Firestore with ChangeNotifier {
  final db = FirebaseFirestore.instance;
  UserModel? userModel;

//---------------------------------create
  Future<void> addUserToCollectionUser(
      uid, UserModel userModel, context) async {
    try {
      final userRef = db.collection("user");
      final docs = userRef.doc(uid);
      await docs.set(userModel.toJson());
      print("----------------added user-----------------");
    } catch (e) {
      return customeShowDiolog("$e", context);
    }
  }

  addAllUser(uid, AllUserModel allUserModel) async {
    final allRef = db.collection("all user");
    final docs = allRef.doc(uid);
    await docs.set(allUserModel.toJson());
    print("----------------added user-----------------");
  }

  addBarterProducttoCollection(
      BarterAddProductModel barterAddProductModel) async {
    final productDocRef = db
        .collection("user")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("Products")
        .doc();

    await productDocRef.set(barterAddProductModel.tojson(productDocRef.id));
    //++
    await _addToallBarterProductList(productDocRef.id, barterAddProductModel);
  }

  Future _addToallBarterProductList(
      refId, BarterAddProductModel barterAddProductModel) async {
    await db
        .collection("All Barter Product List")
        .doc(refId)
        .set(barterAddProductModel.tojson(refId));
  }

//------------------------------------delete

//------------------------------------update
  updateCurrentUserData(loginId, UserModel userModel) async {
    await db.collection("user").doc(loginId).update(userModel.toJson());
  }

//---------------------------fetch

  fetchcurrentData(loginId, context) async {
    await fetchCurrentUser(loginId);
    notifyListeners();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Navigationnn()));
  }

  Future fetchCurrentUser(logiId) async {
    DocumentSnapshot<Map<String, dynamic>> userSnapshot =
        await db.collection("user").doc(logiId).get();
    if (userSnapshot.exists) {
      userModel = UserModel.fromJson(userSnapshot.data()!);
      // notifyListeners();
      print(userSnapshot.data()!);
      print("--------fetchd user------");
    }
  }

  List<BarterAddProductModel> allBarterProductList = [];
  fetchAllProductBarterAdded() async {
    QuerySnapshot<Map<String,dynamic>> productSnapshot =
        await db.collection("All Barter Product List").get();
    allBarterProductList = productSnapshot.docs.map((e) {
      return BarterAddProductModel.fromJson(e.data());
    }).toList();
  }
}
