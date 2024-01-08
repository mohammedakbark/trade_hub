import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/model/successpayment.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/afterpayment_page.dart';
import 'package:trade_hub/viewmodel/firestore.dart';
import 'package:trade_hub/viewmodel/payment_gateway.dart';
import 'package:upi_india/upi_india.dart';

class SelectPaymentOptionPage extends StatefulWidget {
  String upiID;
  String shopName;
  double price;
  dynamic image;
  String proID;
  String profName;
  String quntity;
  String discreption;
  SelectPaymentOptionPage(
      {super.key,
      required this.discreption,
      required this.shopName,
      required this.upiID,
      required this.price,
      required this.image,
      required this.proID,
      required this.profName,
      required this.quntity});

  @override
  State<SelectPaymentOptionPage> createState() =>
      _SelectPaymentOptionPageState();
}

class _SelectPaymentOptionPageState extends State<SelectPaymentOptionPage> {
  bool paymnetoptionSelected = false;

  // TODO: implement initState

  @override
  Widget build(BuildContext context) {
    //======================================temporary no working 8/1/2024
    // final prof = Provider.of<PaymentGateway>(context);


    // callnext()async {
    //   final firestore = Provider.of<Firestore>(context,listen: false);
    //   firestore.addtoMyOrder(
    //       FirebaseAuth.instance.currentUser!.uid,
    //       SuccessPaymentMoel(
    //           amount: "${widget.price}",
    //           quantity: widget.quntity,
    //           userID: FirebaseAuth.instance.currentUser!.uid,
    //           status: "Active",
    //           from: "${firestore.userModel?.name}",
    //           image: widget.image,
    //           productID: widget.proID,
    //           productName: widget.profName,
    //           to: widget.shopName,
    //           transactionId: "123"));

    //   Navigator.push(context, MaterialPageRoute(
    //     builder: (context) {
    //       return AfterPaymentPage(
    //         description: widget.discreption,
    //         currentUserName: "${firestore.userModel?.name}",
    //         productName: widget.profName,
    //         productImage: widget.image,
    //         userAddress: "${firestore.userModel?.deliveryAddress}",
    //         price: widget.price.toInt(),
    //       );
    //     },
    //   ));
    // }

    Widget displayUpiApps(PaymentGateway paymentpro) {
      if (paymentpro.apps == null) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (paymentpro.apps.isEmpty) {
        return const Center(
          child: Text("No apps found to handle transaction."),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Selecte your payment option "),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Wrap(
                  children: paymentpro.apps.map<Widget>((app) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          paymnetoptionSelected = true;
                        });

                        paymentpro.initiateTransaction(
                            app, widget.upiID, widget.shopName, widget.price);
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Column(
                          children: [
                            Image.memory(
                              app.icon,
                              height: 60,
                              width: 60,
                            ),
                            Text(app.name)
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      }
    }
//======================================temporary no working 8/1/2024
    // if (paymnetoptionSelected == true) {
    //   // Timer.periodic(Duration(seconds: 1), (timer) {
    //     callnext();
    //     // timer.cancel();
    //   // });
    // }

    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_back_rounded),
              ),
            ),
          ),
          backgroundColor: const Color(0xCCB7A6FC),
          centerTitle: true,
          title: Text(
            'Pay Order',
            style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.w400, fontSize: 23, color: Colors.white),
          ),
        ),
        body: Consumer<PaymentGateway>(builder: (context, paymentpro, child) {
          return Builder(builder: (context) {
            return FutureBuilder(
                future: paymentpro.getAllApps(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return displayUpiApps(paymentpro);
                });
          });
        }));
  }
}
