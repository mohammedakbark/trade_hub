import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:upi_india/upi_india.dart';

class PaymentGateway with ChangeNotifier {
  UpiResponse? upiResponse;
  UpiIndia _upiIndia = UpiIndia();
  String? transactionId;

  List<UpiApp> apps = [];
  Future getAllApps() async {
    await _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
      // setState(() {
      apps = value;

      // });
    }).catchError((e) {
      apps = [];
    });
  }

  Future initiateTransaction(
      UpiApp app, upiID, receiverNmae, price, context) async {
    try {

      
      _upiIndia.startTransaction(
        app: app,
        receiverUpiId: "kamalmuthanayil9747958478-2@okicici",
        receiverName: receiverNmae,
        transactionRefId: 'TestingUpiIndiaPlugin',
        transactionNote: 'Payment to TRAADE-HUB',
        amount: price,
      );
      //     .then((value) {

      //   // print(transactionId = value.responseCode);

      //   // if (value.status == UpiPaymentStatus.SUBMITTED) {
      //   //   print("a");
      //   // } else if (value.status == UpiPaymentStatus.SUBMITTED) {
      //   //   print("b");
      //   // } else if (value.status == UpiPaymentStatus.SUBMITTED) {
      //   //   print("c");
      //   // } else if (value.status == UpiPaymentStatus.SUBMITTED) {
      //   //   print("d");
      //   // } else {
      //   //   print("hgjj");
      //   // }
      //   // checkTnsctionStatus(value.status);
      // });
    } catch (e) {
      print("$e    hhhhhhhhhhhhhhhhhhhhhh");
    }
  }

  // checkTnsctionStatus(value) {
  //   try {
  //     switch (value) {
  //       case UpiPaymentStatus.SUCCESS:
  //         print("SUCCESS");
  //         break;
  //       case UpiPaymentStatus.SUBMITTED:
  //         print("SUBMITTED");
  //         break;

  //       case UpiPaymentStatus.FAILURE:
  //         print("FAILURE");
  //         break;
  //       case UpiPaymentStatus.OTHER:
  //         print("OTHER");
  //         break;
  //       default:
  //         print("cancelled");
  //     }
  //   } catch (e) {
  //     print(e);
  //     print("======");
  //   }
  // }
}
