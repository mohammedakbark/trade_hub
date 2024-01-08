import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/model/successpayment.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/afterpayment_page.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/selectepayementoption.dart';
import 'package:trade_hub/viewmodel/controller.dart';
import 'package:trade_hub/viewmodel/firestore.dart';
import 'package:trade_hub/viewmodel/payment_gateway.dart';

class CartPage extends StatefulWidget {
  String productId;
  String productImage;
  String productName;
  int price;
  String isdeliveryfree;
  String currentUserName;
  String userAddress;
  String description;
  String upiId;
  String shopName;
  String selectedShoId;
  CartPage(
      {super.key,
      required this.productId,
      required this.selectedShoId,
      required this.currentUserName,
      required this.isdeliveryfree,
      required this.price,
      required this.description,
      required this.productImage,
      required this.productName,
      required this.shopName,
      required this.upiId,
      required this.userAddress});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int deliveryFee = 00;
  @override
  Widget build(BuildContext context) {
    if (widget.isdeliveryfree == "Free Delivery") {
      deliveryFee = 00;
    } else {
      deliveryFee = 40;
    }

    // Provider.of<Controller>(context, listen: false)
    //     .calculateTotalprice(widget.price, 1);
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 110,
              width: double.infinity,
              color: const Color(0xCCB7A6FC),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                    Text(
                      'My Cart',
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400,
                          fontSize: 23,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 40,
                    )
                  ],
                ),
              ),
            ),

            //==================================================================================================

            Padding(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 20),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                    color: const Color(0x4CB7A6FC),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 12, bottom: 10),
                      child: Text(
                        'Deliver to :',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 12),
                      child: Text(
                        widget.currentUserName,
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 12),
                      child: Text(
                        widget.userAddress,
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color(0xff575757)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //=====================================================================================================

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 19, right: 19),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(0.00, 1.00),
                    end: const Alignment(0, -2.7),
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white,
                      Colors.white
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              widget.productImage,
                              fit: BoxFit.fill,
                              height: hight * .13,
                              width: width * .27,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              children: [
                                Text(
                                  widget.productName.toUpperCase(),
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                      color: Colors.black),
                                ),
                                Text(
                                  '₹ ${widget.price}',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Consumer<Controller>(
                              builder: (context, controller, child) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.decrementCounter(
                                        widget.price, deliveryFee);
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: controller.isRemoveIconPressed
                                          ? const Color(0xCCB7A6FC)
                                          : Color.fromARGB(255, 142, 140, 140),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: const Icon(Icons.remove, size: 10),
                                  ),
                                ),
                                // const SizedBox(width: 30),
                                Container(
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  height: 20,
                                  width: 30,
                                  child: Text(
                                    controller.counter.toString(),
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ),
                                // const SizedBox(width: 30),
                                GestureDetector(
                                  onTap: () {
                                    controller.incrementCounter(
                                        widget.price, deliveryFee);
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: controller.isAddIconPressed
                                          ? const Color(0xCCB7A6FC)
                                          : Color.fromARGB(255, 142, 140, 140),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: const Icon(Icons.add, size: 10),
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),

                      // Padding(
                      //   padding: const EdgeInsets.only(top: 70),
                      //   child: Image.asset('assets/Group 12702.png'),
                      // )
                    ],
                  ),
                ),
              ),
            ),

            //================================================================================================

            Padding(
              padding: const EdgeInsets.only(
                  left: 19, right: 19, top: 19, bottom: 30),
              child: Container(
                width: double.infinity,
                height: 297,
                decoration: BoxDecoration(
                    color: const Color(0x4CB7A6FC),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price Details',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Builder(builder: (context) {
                                  return Text(
                                    "Total Price",
                                    style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: const Color(0xff575757)),
                                  );
                                }),
                              ),

                              //------------------------------------------------------------------------------------------------------

                              // Padding(
                              //   padding: const EdgeInsets.only(top: 10),
                              //   child: Text(
                              //     'Discount',
                              //     style: GoogleFonts.lexendDeca(
                              //         fontWeight: FontWeight.w400,
                              //         fontSize: 14,
                              //         color: const Color(0xff575757)),
                              //   ),
                              // ),

                              //------------------------------------------------------------------------------------------------------

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Delivery Fee',
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: const Color(0xff575757)),
                                ),
                              ),

                              //------------------------------------------------------------------------------------------------------
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Consumer<Controller>(
                                    builder: (context, controller, child) {
                                  return Text(
                                    "${controller.totalprice}",
                                    style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: const Color(0xff575757)),
                                  );
                                }),
                              ),

                              //------------------------------------------------------------------------------------------------------

                              // Padding(
                              //   padding: const EdgeInsets.only(top: 10),
                              //   child: Text(
                              //     widget.isdeliveryfree == "Free Delivery"
                              //         ? '₹00'
                              //         : "₹40",
                              //     style: GoogleFonts.lexendDeca(
                              //         fontWeight: FontWeight.w700,
                              //         fontSize: 14,
                              //         color: const Color(0xff575757)),
                              //   ),
                              // ),

                              //------------------------------------------------------------------------------------------------------

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "₹ ${deliveryFee}",
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: const Color(0xff575757)),
                                ),
                              ),

                              //------------------------------------------------------------------------------------------------------
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 95, bottom: 10),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Amount',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: const Color(0xff575757)),
                          ),
                          Consumer<Controller>(
                              builder: (context, controller, child) {
                            return Text(
                              "${controller.totalprice}",
                              style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: const Color(0xff575757)),
                            );
                          }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //===================================================================================================================
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Consumer2<Controller, Firestore>(
            builder: (context, controller, firestore, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Amount',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xff807F7F)),
                  ),
                  Text(
                    "${controller.totalprice}",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  if (controller.counter != 0) {
                    double doubleprice = double.parse(widget.price.toString());

                    // ============================this code is needed for payment option ,============================

//======================

                    // firestore.addtoMyOrder(FirebaseAuth.instance.currentUser!.uid, SuccessPaymentMoel(amount: "${widget.price}", quantity: "${controller.counter}", userID: FirebaseAuth.instance.currentUser!.uid, status: "Active", from: "${firestore.userModel?.name}", image: widget.productImage, productID: widget.id, productName: productName, to: to, transactionId: transactionId))
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectPaymentOptionPage(
                              selectedShoId: widget.selectedShoId,
                                  discreption: widget.description,
                                  price: doubleprice,
                                  shopName: widget.shopName,
                                  upiID: widget.upiId,
                                  image: widget.productImage,
                                  profName: widget.productName,
                                  quntity: "${controller.counter}",
                                  proID: widget.productId,
                                )));

                    // firestore.addtoMyOrder(
                    //     FirebaseAuth.instance.currentUser!.uid,
                    //     SuccessPaymentMoel(
                    //         amount: "${widget.price}",
                    //         quantity: "${controller.counter}",
                    //         userID: FirebaseAuth.instance.currentUser!.uid,
                    //         status: "Active",
                    //         from: "${firestore.userModel?.name}",
                    //         image: widget.productImage,
                    //         productID: widget.productId,
                    //         productName: widget.productName,
                    //         to: widget.shopName,
                    //         transactionId: "123"));
                    //         Navigator.pushReplacement(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return AfterPaymentPage(
                    //       description: widget.description,
                    //       currentUserName: widget.currentUserName,
                    //       productName: widget.productName,
                    //       productImage: widget.productImage,
                    //       userAddress: widget.userAddress,
                    //       price: controller.totalprice,
                    //     );
                    //   },
                    // ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Select the quantity and continue")));
                  }
                },
                child: Container(
                  width: 246,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFB7A6FC)),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
