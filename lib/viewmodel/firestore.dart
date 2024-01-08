import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trade_hub/model/addProductShopModel.dart';
import 'package:trade_hub/model/all_user_model.dart';
import 'package:trade_hub/model/barteraddproduct_model.dart';
import 'package:trade_hub/model/shopmodel.dart';
import 'package:trade_hub/model/successpayment.dart';
import 'package:trade_hub/model/usermodel.dart';
import 'package:trade_hub/view/Modules/admin/homepageShop.dart';
import 'package:trade_hub/view/Modules/admin/naviagtionShop.dart';
import 'package:trade_hub/view/Modules/user/navigation%20bar.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';

class Firestore with ChangeNotifier {
  final db = FirebaseFirestore.instance;
  UserModel? userModel;
  ShopDataModel? shopDataModel;

//---------------------------------create
  addAllUser(uid, AllUserModel allUserModel) async {
    final allRef = db.collection("all user");
    final docs = allRef.doc(uid);
    await docs.set(allUserModel.toJson());
    print("----------------added user-----------------");
  }

//++++++++++++++++++++++++++++++++++++++++++=BARTER++++++++++++++++++++++++++++++++++++++
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

  addtoMyOrder(userID, SuccessPaymentMoel successPaymentMoel, shopId) async {
    final docs =
        db.collection("user").doc(userID).collection("userOrder").doc();
    await docs.set(successPaymentMoel.tojson(docs.id));

    await db
        .collection("Shop")
        .doc(shopId)
        .collection("MyOrder")
        .doc(docs.id)
        .set(successPaymentMoel.tojson(docs.id));

    // await db
    //     .collection("AllOrder")
    //     .doc(docs.id)
    //     .set(successPaymentMoel.tojson(docs.id));

    print("transactioAdded");
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

//+++++++++++++++++++++++++++++++++SHOP++++++++++++++++++++++++++++++++=
  addShopCollection(uid, ShopDataModel shopDataModel) async {
    await db.collection("Shop").doc(uid).set(shopDataModel.toJson());
    print("----------Shp added successful");
  }

  addProductToShopCollection(
      shopId, AddProductShopModel addProductShopModel) async {
    final docRef =
        db.collection("Shop").doc(shopId).collection("Products").doc();
    await docRef.set(addProductShopModel.toJson(docRef.id));
    //++
    await _addtoAllShopProductList(docRef.id, addProductShopModel);
    print("----------shop added product----------");
  }

  Future _addtoAllShopProductList(
      refId, AddProductShopModel addProductShopModel) async {
    await db
        .collection("All Shop Product List")
        .doc(refId)
        .set(addProductShopModel.toJson(refId));
  }

//------------------------------------delete

//------------------------------------update
  updateCurrentUserData(loginId, UserModel userModel) async {
    await db.collection("user").doc(loginId).update(userModel.toJson());
  }

  updateToSUBMITOrder(selecteduserID, selectedOrderID,currentShopId) async {
    await db
        .collection("user")
        .doc(selecteduserID)
        .collection("userOrder")
        .doc(selectedOrderID)
        .update({"status": "Completed"});

         await db
        .collection("Shop")
        .doc(currentShopId)
        .collection("MyOrder")
        .doc(selectedOrderID)
        .update({"status": "Completed"});

    // await db
    //     .collection("AllOrder")
    //     .doc(selectedOrderID)
    //     .update({"status": "Completed"});
    notifyListeners();
    print("sumitted");
  }

  updateToCANCELOrder(selecteduserID, selectedOrderID,shopId) async {
    await db
        .collection("user")
        .doc(selecteduserID)
        .collection("userOrder")
        .doc(selectedOrderID)
        .update({"status": "Cancel"});

         await db
        .collection("Shop")
        .doc(shopId)
        .collection("MyOrder")
        .doc(selectedOrderID)
        .update({"status": "Cancel"});

    // await db
    //     .collection("AllOrder")
    //     .doc(selectedOrderID)
    //     .update({"status": "Cancel"});

    print("sumitted");

    notifyListeners();
  }

//---------------------------fetch
  List<AllUserModel> alluserList = [];
  fetchAllUserforType() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await db.collection("all user").get();
    alluserList = snapshot.docs.map((e) {
      return AllUserModel.fromJson(e.data());
    }).toList();
    notifyListeners();
  }

  List<AllUserModel> alluserListforType = [];
  fetchcurrentUserforType(currentUid) async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await db
        .collection("all user")
        .where("userId", isEqualTo: currentUid)
        .get();
    alluserListforType = snapshot.docs.map((e) {
      return AllUserModel.fromJson(e.data());
    }).toList();
    // currentUserTypre

    return alluserListforType[0].type;
  }

  fetchcurrentDataforLogin(loginId, context, type) async {
    if (type == 0) {
      await fetchCurrentUser(loginId);
      notifyListeners();
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Navigationnn()),
          (route) => false);
    }
    if (type == 1) {
      await fetchCurrentShop(loginId);
      notifyListeners();
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const NavigationShop()),
          (route) => false);
    }
  }

//++++++++++++++++BARTER----------------

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
    QuerySnapshot<Map<String, dynamic>> productSnapshot =
        await db.collection("All Barter Product List").get();
    allBarterProductList = productSnapshot.docs.map((e) {
      return BarterAddProductModel.fromJson(e.data());
    }).toList();
  }

//++++++++++++++Shop++++++++++++++++++++=
  Future fetchCurrentShop(logiId) async {
    DocumentSnapshot<Map<String, dynamic>> userSnapshot =
        await db.collection("Shop").doc(logiId).get();
    if (userSnapshot.exists) {
      shopDataModel = ShopDataModel.fromJson(userSnapshot.data()!);
      // notifyListeners();
      print(userSnapshot.data()!);
      print("--------fetchd Shop------");
      await fetchAllProductShopAdded(logiId);
      //  fetchAllProductShopAdded(logiId);
    }
  }

  List<AddProductShopModel> curentshopProductList = [];
  fetchAllProductShopAdded(uid) async {
    QuerySnapshot<Map<String, dynamic>> productSnapshot =
        await db.collection("Shop").doc(uid).collection("Products").get();

    curentshopProductList = productSnapshot.docs.map((e) {
      print(e.data());
      return AddProductShopModel.fromjson(e.data());
    }).toList();
  }

  List<AddProductShopModel> allShopProductList = [];
  _fetchAllShopProductToList() async {
    QuerySnapshot<Map<String, dynamic>> productSnapshot =
        await db.collection("All Shop Product List").get();
    allShopProductList = productSnapshot.docs.map((e) {
      return AddProductShopModel.fromjson(e.data());
    }).toList();
  }

  List<ShopDataModel> allShopDataList = [];
  _fetchAllShopsData() async {
    QuerySnapshot<Map<String, dynamic>> productSnapshot =
        await db.collection("Shop").get();
    allShopDataList = productSnapshot.docs.map((e) {
      return ShopDataModel.fromJson(e.data());
    }).toList();
  }

  List<AddProductShopModel> selectedShopProductsList = [];
  Future<List<AddProductShopModel>> fetchselectedAllShopProduct(shopId) async {
    QuerySnapshot<Map<String, dynamic>> productSnapshot =
        await db.collection("Shop").doc(shopId).collection("Products").get();

    selectedShopProductsList = productSnapshot.docs.map((e) {
      return AddProductShopModel.fromjson(e.data());
    }).toList();
    notifyListeners();
    return selectedShopProductsList;
  }

  AddProductShopModel? selectedproductFromShop;
  fetchSelectedProductFromTheSelectedShop(productID, shopId) async {
    DocumentSnapshot<Map<String, dynamic>> productSnapshot = await db
        .collection("Shop")
        .doc(shopId)
        .collection("Products")
        .doc(productID)
        .get();
    if (productSnapshot.exists) {
      selectedproductFromShop =
          AddProductShopModel.fromjson(productSnapshot.data()!);
      print("--------fetchd selected product------");
      QuerySnapshot<Map<String, dynamic>> snap =
          await db.collection("Shop").doc(shopId).collection("Products").get();

      selectedShopProductsList = snap.docs.map((e) {
        return AddProductShopModel.fromjson(e.data());
      }).toList();
    }
  }

  fetchShoDataForUser() async {
    await _fetchAllShopsData();

    await _fetchAllShopProductToList();
  }

  //+++++++++++++++++++++++++++++++++++++++++++

  fetchOrdersforUser(id) async {
    await _fetchCurrentUserActiveOrder(id);
    await _fetchCurrentUserCompletdedOrder(id);
    await _fetchcurrentUserCanceledOrder(id);
  }

  List<SuccessPaymentMoel> activeOrderList = [];
  _fetchCurrentUserActiveOrder(userId) async {
    QuerySnapshot<Map<String, dynamic>> snpshot = await db
        .collection("user")
        .doc(userId)
        .collection("userOrder")
        .where("status", isEqualTo: "Active")
        .get();
    activeOrderList = snpshot.docs.map((e) {
      return SuccessPaymentMoel.fromJson(e.data());
    }).toList();
    print("fetchde orders");
  }

  List<SuccessPaymentMoel> completdOrderList = [];
  _fetchCurrentUserCompletdedOrder(userId) async {
    QuerySnapshot<Map<String, dynamic>> snpshot = await db
        .collection("user")
        .doc(userId)
        .collection("userOrder")
        .where("status", isEqualTo: "Completed")
        .get();
    completdOrderList = snpshot.docs.map((e) {
      return SuccessPaymentMoel.fromJson(e.data());
    }).toList();
    print("fetchde orders");
  }

  List<SuccessPaymentMoel> canceledOrderLists = [];
  _fetchcurrentUserCanceledOrder(id) async {
    QuerySnapshot<Map<String, dynamic>> snpshot = await db
        .collection("user")
        .doc(id)
        .collection("userOrder")
        .where("status", isEqualTo: "Cancel")
        .get();
    canceledOrderLists = snpshot.docs.map((e) {
      return SuccessPaymentMoel.fromJson(e.data());
    }).toList();
    print("fetchde orders");
  }

///////////////Admin//////////////
  List<SuccessPaymentMoel> allActiveOrderListsinShop = [];
  fetchAllActiveOrderForAdmin(currentShopId) async {
    QuerySnapshot<Map<String, dynamic>> snpshot = await db
        .collection("Shop").doc(currentShopId).collection("MyOrder")
        .where("status", isEqualTo: "Active")
        .get();

    allActiveOrderListsinShop = snpshot.docs.map((e) {
      return SuccessPaymentMoel.fromJson(e.data());
    }).toList();
    print("============================");
  }
  List<SuccessPaymentMoel> allCompletedOrderListsinShop = [];
  fetchAllCompletdOrderOrderForAdmin(currentShopId) async {
    QuerySnapshot<Map<String, dynamic>> snpshot = await db
        .collection("Shop").doc(currentShopId).collection("MyOrder")
        .where("status", isEqualTo: "Completed")
        .get();

    allCompletedOrderListsinShop = snpshot.docs.map((e) {
      return SuccessPaymentMoel.fromJson(e.data());
    }).toList();
    print("============================");
  }


  // fetchAllActiveOrderForAdmin() async {
  //   QuerySnapshot<Map<String, dynamic>> snpshot = await db
  //       .collection("AllOrder")
  //       .where("status", isEqualTo: "Active")
  //       .get();

  //   allActiveOrderLists = snpshot.docs.map((e) {
  //     return SuccessPaymentMoel.fromJson(e.data());
  //   }).toList();
  //   print("============================");
  // }

  // List<SuccessPaymentMoel> allCompletedOrderLists = [];
  // fetchAllCompletdOrderOrderForAdmin() async {
  //   QuerySnapshot<Map<String, dynamic>> snpshot = await db
  //       .collection("AllOrder")
  //       .where("status", isEqualTo: "Completed")
  //       .get();

  //   allCompletedOrderLists = snpshot.docs.map((e) {
  //     return SuccessPaymentMoel.fromJson(e.data());
  //   }).toList();
  //   print("============================");
  // }
}
