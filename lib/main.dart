import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/firebase_options.dart';
import 'package:trade_hub/view/Modules/admin/addproductShop.dart';
import 'package:trade_hub/view/Modules/admin/settings.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/buyselectedproduct.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/cartpage.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/afterpayment_page.dart';

import 'package:trade_hub/view/Modules/user/Login%20Pages/splash%20screen.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/settingsmain_page.dart';
import 'package:trade_hub/viewmodel/controller.dart';
import 'package:trade_hub/viewmodel/firestore.dart';
import 'package:trade_hub/viewmodel/payment_gateway.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Firestore>(create: (_) => Firestore()),
        ChangeNotifierProvider<Controller>(create: (_) => Controller()),
        ChangeNotifierProvider<PaymentGateway>(create: (_) => PaymentGateway())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Splashhh()),
    );
  }
}
