import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/welcome.dart';
import 'package:trade_hub/viewmodel/check_login_preference.dart';

class Splashhh extends StatefulWidget {
  const Splashhh({super.key});

  @override
  State<Splashhh> createState() => _SplashhhState();
}

class _SplashhhState extends State<Splashhh> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      checkLoginStatus(context);
      // return Navigator.pushReplacement(context, MaterialPageRoute(
      //   builder: (context) {
      //     return const Welcomeee();
        // },
      // ));
    });
    return Scaffold(
      body: Center(child: Image.asset('assets/Frame 1171275544.png')),
    );
  }
}
