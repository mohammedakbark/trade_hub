import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/log%20in.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/welcome.dart';
import 'package:trade_hub/view/Modules/user/navigation%20bar.dart';

checkLoginStatus(context) async {
  bool isLoggedIn = await getLoggedPrefer();
  if (isLoggedIn == true) {
    final uid = FirebaseAuth.instance.currentUser!.uid;

    storeInstence.fetchcurrentUserforType(uid).then((value) {
      if (value == "USER") {
        storeInstence.fetchcurrentDataforLogin(uid, context, 0);
      }
      if (value == "SHOP") {
        storeInstence.fetchcurrentDataforLogin(uid, context, 1);
      }
    });
  } else {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Welcomeee()));
  }
}

Future<bool> getLoggedPrefer() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isLoggedIn') ?? false;
}

void setLoginPrefertrue() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', true);
  getLoggedPrefer();
}

void setLoginPreferfalse() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', false);
  getLoggedPrefer();
}
