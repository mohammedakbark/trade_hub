import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/cartpage.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class BuySelectedProductPage extends StatefulWidget {
  String selectedProductID;
  String shopID;
  String shopName;
  String upiID;
  BuySelectedProductPage(
      {super.key, required this.selectedProductID, required this.shopID,required this.shopName,required this.upiID});

  @override
  State<BuySelectedProductPage> createState() => _BuySelectedProductPageState();
}

class _BuySelectedProductPageState extends State<BuySelectedProductPage> {
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<Firestore>(builder: (context, firestore, child) {
        return FutureBuilder(
            future: firestore.fetchSelectedProductFromTheSelectedShop(
                widget.selectedProductID, widget.shopID),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final data = firestore.selectedproductFromShop;
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //======================= search bar ============================================================================

                      Column(
                        children: [
                          SizedBox(
                            width: width,
                            height: hight * .3,
                            child: Image.network(
                              "${data?.productImage}",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset('assets/Group 3.png'),
                          ),
                        ],
                      ),

                      //======================== image ============================================================================================

                      Padding(
                        padding: const EdgeInsets.only(left: 19, top: 10),
                        child: Text(
                          "${data?.productName.toUpperCase()}",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Text(
                          "${data?.productDescription}",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 19, top: 5),
                        child: Text(
                          "${data?.isFreeDelivery}",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: const Color(0xff565656)),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 19, top: 5),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.currency_rupee_outlined,
                              size: 17,
                            ),
                            Text(
                              "${data?.amount}",
                              style: GoogleFonts.quantico(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'Select Variant',
                          style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      //=============== select varient =========================================================================================

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 43,
                        color: const Color(0x33B7A6FC),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  // const Stack(
                                  //   children: [
                                  //     Padding(
                                  //       padding: EdgeInsets.only(
                                  //           bottom: 10, left: 5),
                                  //       child: CircleAvatar(
                                  //         backgroundColor: Color(0xffFE0000),
                                  //         radius: 6,
                                  //       ),
                                  //     ),
                                  //     Padding(
                                  //       padding:
                                  //           EdgeInsets.only(left: 10, top: 10),
                                  //       child: CircleAvatar(
                                  //         backgroundColor: Color(0xffF00FF19),
                                  //         radius: 6,
                                  //       ),
                                  //     ),
                                  //     Padding(
                                  //       padding:
                                  //           EdgeInsets.only(right: 10, top: 10),
                                  //       child: CircleAvatar(
                                  //         backgroundColor: Color(0xff000AFF),
                                  //         radius: 6,
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                  Text(
                                    "${data?.varient1title}:  ",
                                    style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "${data?.varient1detail}",
                                    style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              // Row(
                              //   children: [
                              //     Text(
                              //       '4 more  ',
                              //       style: GoogleFonts.lexendDeca(
                              //         fontWeight: FontWeight.w400,
                              //         fontSize: 10,
                              //         color: Colors.black,
                              //       ),
                              //     ),
                              //     const Icon(
                              //       Icons.arrow_forward_ios,
                              //       size: 13,
                              //       color: Color(0xff3763FF),
                              //     )
                              //   ],
                              // )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),

                      Container(
                        height: 43,
                        color: const Color(0x33B7A6FC),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  // Image.asset('assets/30986 1.png'),
                                  Text(
                                    "${data?.varient2title}:  ",
                                    style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "${data?.varient2detail}",
                                    style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              // Row(
                              //   children: [
                              //     Text(
                              //       '4 more  ',
                              //       style: GoogleFonts.lexendDeca(
                              //         fontWeight: FontWeight.w400,
                              //         fontSize: 10,
                              //         color: Colors.black,
                              //       ),
                              //     ),
                              //     const Icon(
                              //       Icons.arrow_forward_ios,
                              //       size: 13,
                              //       color: Color(0xff3763FF),
                              //     )
                              //   ],
                              // )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),

                      //-----------------------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),

                      Container(
                        height: 44,
                        color: const Color(0x33B7A6FC),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Deliver to :',
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "${firestore.userModel?.name}",
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${firestore.userModel?.deliveryAddress}",
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              // Container(
                              //   width: 74.52,
                              //   height: 30,
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(8),
                              //       color: Colors.white),
                              //   child: Center(
                              //     child: Text(
                              //       'Change',
                              //       style: GoogleFonts.quicksand(
                              //         fontWeight: FontWeight.w700,
                              //         fontSize: 10,
                              //         color: Colors.black,
                              //       ),
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: 1,
                        color: Colors.black,
                      ),

                      Container(
                        height: 44,
                        color: const Color(0x33B7A6FC),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "${data?.isFreeDelivery}",
                                    style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: data?.isFreeDelivery ==
                                              "Free Delivery"
                                          ? const Color(0xff00BE63)
                                          : Colors.red,
                                    ),
                                  ),
                                  data?.isFreeDelivery == "Free Delivery"
                                      ? Image.asset('assets/Group 12636.png')
                                      : SizedBox()
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Will be delivered in 3 working days',
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: 1,
                        color: Colors.black,
                      ),

                      //====================== buy now =================================================================================================================

                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 74,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.black)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Qty : ',
                                        style: GoogleFonts.abel(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                      // Text(
                                      //   '1 ',
                                      //   style: GoogleFonts.abel(
                                      //     fontWeight: FontWeight.w700,
                                      //     fontSize: 12,
                                      //     color: Colors.red,
                                      //   ),
                                      // ),
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color(0xffB7B7B7),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "${data?.isInStock}",
                                    style: GoogleFonts.abel(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: data?.isInStock == "In Stock"
                                          ? const Color(0xff00BE63)
                                          : Colors.red,
                                    ),
                                  ),
                                ),
                                // Container(
                                //   width: 178,
                                //   height: 35.5,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(90),
                                //       color: Colors.yellow[800],
                                //       border: Border.all(
                                //         color: Colors.yellow,
                                //         width: 3,
                                //       )),
                                //   child: Center(
                                //     child: Text('Add to Cart',
                                //         style: GoogleFonts.inter(
                                //           fontWeight: FontWeight.w800,
                                //           fontSize: 17,
                                //           color: Colors.white,
                                //         )),
                                //   ),
                                // )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                if (data?.isInStock == "In Stock") {
                                  int price = int.parse("${data?.amount}");
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return CartPage(
                                        selectedShoId: widget.shopID,
                                        productId: widget.selectedProductID,
                                        shopName:widget.shopName ,
                                         upiId:widget.upiID ,
                                        currentUserName:
                                            "${firestore.userModel?.name}",
                                        userAddress:
                                            "${firestore.userModel?.deliveryAddress}",
                                        isdeliveryfree:
                                            "${data?.isFreeDelivery}",
                                        price: price,
                                        productImage: "${data?.productImage}",
                                        productName: "${data?.productName}",
                                        description: "${data?.productDescription}",
                                      );
                                    },
                                  ));
                                } else {
                                  customeShowDiolog(
                                      "oops..this product is out of stock,select other item",
                                      context);
                                }

                                // return storage();
                              },
                              child: Container(
                                width: 176.5,
                                height: 99,
                                decoration: BoxDecoration(
                                    color: const Color(0xff1ED800),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.yellowAccent, width: 3),
                                    boxShadow: [
                                      const BoxShadow(
                                          color: Color(0xff1ED800),
                                          blurRadius: 7,
                                          spreadRadius: 0.1)
                                    ]),
                                child: Center(
                                  child: Text('BUY NOW',
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      //==================================== highlight ============================================================

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 10, bottom: 10),
                        child: Text('Highlights',
                            style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            )),
                      ),

                      //=========================================================================================================================

                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 237,
                        color: const Color(0x33B7A6FC),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                children: [
                                  // const Icon(
                                  //   Icons.memory,
                                  //   size: 40,
                                  // ),
                                  Column(
                                    children: [
                                      Text("${data?.highlightText1}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          )),
                                      Text("${data?.highlightHead1}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //-------------------------------------------------------------------------------------------------------------------------------

                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                children: [
                                  // Image.asset('assets/543320 1.png'),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${data?.highlightText2}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          )),
                                      Text("${data?.highlightHead2}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //-------------------------------------------------------------------------------------------------------------------------------

                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                children: [
                                  // const Icon(
                                  //   Icons.camera_alt_outlined,
                                  //   size: 35,
                                  // ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${data?.highlightText3}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          )),
                                      Text("${data?.highlightHead3}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //-------------------------------------------------------------------------------------------------------------------------------

                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                children: [
                                  // const Icon(
                                  //   Icons.cameraswitch_outlined,
                                  //   size: 30,
                                  // ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${data?.highlightText4}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          )),
                                      Text("${data?.highlightHead4}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //-------------------------------------------------------------------------------------------------------------------------------

                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                children: [
                                  // Image.asset('assets/phone_duotone_line.png'),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${data?.highlightText5}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          )),
                                      Text("${data?.highlightHead5}",
                                          style: GoogleFonts.lexendDeca(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //-------------------------------------------------------------------------------------------------------------------------------
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),

                      //===================================================================================================================================

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 10, bottom: 10),
                        child: Text('Other details',
                            style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            )),
                      ),

                      //======================================== other details=================================================================================

                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 383,
                        color: const Color(0x33B7A6FC),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${data?.otherDetailText1}   :   ",
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black,
                                        )),
                                    //----------------------------------------------------------------------------------------------------------------

                                    Text("${data?.otherDetailText2}   :   ",
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black,
                                        )),
                                    //----------------------------------------------------------------------------------------------------------------

                                    Text("${data?.otherDetailText3}   :   ",
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black,
                                        )),
                                    //----------------------------------------------------------------------------------------------------------------

                                    Text("${data?.otherDetailText4}   :   ",
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black,
                                        )),
                                    //----------------------------------------------------------------------------------------------------------------

                                    Text("${data?.otherDetailText5}   :   ",
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black,
                                        )),
                                    //----------------------------------------------------------------------------------------------------------------

                                    //  -----------------------------------------------------------------------------------------------------------
                                  ],
                                ),
                              ),

                              //cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("${data?.otherDetailHead1}",
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: Colors.black,
                                      )),
                                  //----------------------------------------------------------------------------------------------------------------

                                  Text("${data?.otherDetailHead2}",
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: Colors.black,
                                      )),
                                  //----------------------------------------------------------------------------------------------------------------

                                  Text("${data?.otherDetailHead3}",
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: Colors.black,
                                      )),
                                  //----------------------------------------------------------------------------------------------------------------

                                  Text("${data?.otherDetailHead4}",
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: Colors.black,
                                      )),
                                  //----------------------------------------------------------------------------------------------------------------

                                  Text("${data?.otherDetailHead5}",
                                      style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: Colors.black,
                                      )),
                                  //----------------------------------------------------------------------------------------------------------------

                                  //----------------------------------------------------------------------------------------------------------------
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),

                      //==================  rating ===================================================================================================================

                      // Padding(
                      //   padding: const EdgeInsets.only(
                      //       left: 15, top: 10, bottom: 10),
                      //   child: Text('Rating & Reviews',
                      //       style: GoogleFonts.lexendDeca(
                      //         fontWeight: FontWeight.w400,
                      //         fontSize: 14,
                      //         color: Colors.black,
                      //       )),
                      // ),

                      //==================  = ===================================================================================================================

                      // Padding(
                      //   padding: const EdgeInsets.only(left: 15, right: 15),
                      //   child: Container(
                      //     height: 305,
                      //     decoration: BoxDecoration(
                      //         color: const Color(0x33B7A6FC),
                      //         borderRadius: BorderRadius.circular(10)),
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Container(
                      //           width: double.infinity,
                      //           height: 62,
                      //           decoration: const BoxDecoration(
                      //               color: Color(0x33B7A6FC),
                      //               borderRadius: BorderRadius.only(
                      //                   topLeft: Radius.circular(10),
                      //                   topRight: Radius.circular(10))),
                      //           child: Row(
                      //             children: [
                      //               Text('    4.8/5',
                      //                   style: GoogleFonts.lexendDeca(
                      //                     fontWeight: FontWeight.w500,
                      //                     fontSize: 20,
                      //                     color: Colors.black,
                      //                   )),
                      //               Padding(
                      //                 padding: const EdgeInsets.only(
                      //                     left: 20, top: 10),
                      //                 child: Column(
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.start,
                      //                   children: [
                      //                     Text('Overall rating',
                      //                         style: GoogleFonts.lexendDeca(
                      //                           fontWeight: FontWeight.w500,
                      //                           fontSize: 13,
                      //                           color: Colors.black,
                      //                         )),
                      //                     Text('74 Ratings',
                      //                         style: GoogleFonts.lexendDeca(
                      //                           fontWeight: FontWeight.w400,
                      //                           fontSize: 14,
                      //                           color: Colors.grey[800],
                      //                         )),
                      //                   ],
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ),

                      //         //-------------------------------------------------------------------------------------------------------------------------------------

                      //         Padding(
                      //           padding: const EdgeInsets.only(left: 0, top: 0),
                      //           child: Column(
                      //             children: [
                      //               ListTile(
                      //                 leading: Image.asset(
                      //                     'assets/Ellipse (15).png'),
                      //                 title: Text('Villie alex',
                      //                     style: GoogleFonts.lexendDeca(
                      //                       fontWeight: FontWeight.w700,
                      //                       fontSize: 16,
                      //                       color: Colors.black,
                      //                     )),
                      //               )
                      //             ],
                      //           ),
                      //         ),

                      //         const Padding(
                      //           padding: EdgeInsets.only(left: 15, top: 0),
                      //           child: Row(
                      //             children: [
                      //               Icon(
                      //                 Icons.star,
                      //                 color: Color(0xffFFCB45),
                      //                 size: 15,
                      //               ),
                      //               Icon(
                      //                 Icons.star,
                      //                 color: Color(0xffFFCB45),
                      //                 size: 15,
                      //               ),
                      //               Icon(
                      //                 Icons.star,
                      //                 color: Color(0xffFFCB45),
                      //                 size: 15,
                      //               ),
                      //               Icon(
                      //                 Icons.star,
                      //                 color: Color(0xffFFCB45),
                      //                 size: 15,
                      //               ),
                      //               Icon(
                      //                 Icons.star,
                      //                 color: Color(0xffD7D7D7),
                      //                 size: 15,
                      //               ),
                      //             ],
                      //           ),
                      //         ),

                      //         Padding(
                      //           padding:
                      //               const EdgeInsets.only(left: 15, top: 0),
                      //           child: Row(
                      //             children: [
                      //               Text('Good',
                      //                   style: GoogleFonts.lexendDeca(
                      //                     fontWeight: FontWeight.w700,
                      //                     fontSize: 16,
                      //                     color: Colors.black,
                      //                   )),
                      //             ],
                      //           ),
                      //         ),

                      //         Padding(
                      //           padding: const EdgeInsets.only(left: 15),
                      //           child: Text(
                      //               'Feels good product and value for money,but some how rate is much for common poeples',
                      //               style: GoogleFonts.lexendDeca(
                      //                 fontWeight: FontWeight.w400,
                      //                 fontSize: 14,
                      //                 color: Colors.grey[800],
                      //               )),
                      //         ),

                      //         Container(
                      //           width: double.infinity,
                      //           height: 62,
                      //           decoration: const BoxDecoration(
                      //               color: Color(0x33B7A6FC),
                      //               borderRadius: BorderRadius.only(
                      //                   bottomRight: Radius.circular(10),
                      //                   bottomLeft: Radius.circular(10))),
                      //           child: Padding(
                      //             padding: const EdgeInsets.only(
                      //                 left: 15, right: 15),
                      //             child: Row(
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.spaceBetween,
                      //               children: [
                      //                 Text('View  All 74 Reviews',
                      //                     style: GoogleFonts.lexendDeca(
                      //                       fontWeight: FontWeight.w500,
                      //                       fontSize: 14,
                      //                       color: const Color(0xff3763FF),
                      //                     )),
                      //                 const Icon(
                      //                   Icons.arrow_forward_ios,
                      //                   size: 15,
                      //                   color: Color(0xff3763FF),
                      //                 )
                      //               ],
                      //             ),
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      //==================  related ===================================================================================================================

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 10, bottom: 10),
                        child: Text('Related',
                            style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            )),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 20),
                        child: SizedBox(
                          width: width,
                          height: hight * .25,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  firestore.selectedShopProductsList.length,
                              itemBuilder: (context, index) {
                                // if (firestore.selectedShopProductsList.isNotEmpty) {

                                //   controller.allProductData =

                                //       firestore.selectedShopProductsList;

                                // }

                                return InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BuySelectedProductPage(
                                                  shopName: widget.shopName,
                                                  upiID: widget.upiID,
                                                  shopID:
                                                      "${firestore.selectedShopProductsList[index].shopId}",
                                                  selectedProductID:
                                                      "${firestore.selectedShopProductsList[index].productId}",
                                                )));
                                  },
                                  child: Center(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: SizedBox(
                                              height: hight * .17,
                                              width: width * .4,
                                              child: Image.network(
                                                firestore
                                                    .selectedShopProductsList[
                                                        index]
                                                    .productImage,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                              firestore
                                                  .selectedShopProductsList[
                                                      index]
                                                  .productName,
                                              style: GoogleFonts.quicksand(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                                color: Colors.black,
                                              )),
                                          Text(
                                              firestore
                                                  .selectedShopProductsList[
                                                      index]
                                                  .productDescription,
                                              style: GoogleFonts.quicksand(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: Colors.black,
                                              )),
                                          Text(
                                              firestore
                                                  .selectedShopProductsList[
                                                      index]
                                                  .isFreeDelivery,
                                              style: GoogleFonts.quicksand(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 8,
                                                color: const Color(0xff565656),
                                              )),
                                          Text(
                                              "₹ ${firestore.selectedShopProductsList[index].amount}",
                                              style: GoogleFonts.quantico(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13,
                                                color: Colors.black,
                                              )),
                                        ]),
                                  ),
                                );
                              }),
                        ),
                      )

                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.only(left: 15, bottom: 30),
                      //         child: Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Image.asset('assets/Group 12595.png'),
                      //             Text('APPLE',
                      //                 style: GoogleFonts.quicksand(
                      //                   fontWeight: FontWeight.w700,
                      //                   fontSize: 12,
                      //                   color: Colors.black,
                      //                 )),
                      //             Text('Apple iPhone 14 Pro 512GB',
                      //                 style: GoogleFonts.quicksand(
                      //                   fontWeight: FontWeight.w500,
                      //                   fontSize: 10,
                      //                   color: Colors.black,
                      //                 )),
                      //             Text('Free Delivery',
                      //                 style: GoogleFonts.quicksand(
                      //                   fontWeight: FontWeight.w400,
                      //                   fontSize: 8,
                      //                   color: const Color(0xff565656),
                      //                 )),
                      //             Row(
                      //               children: [
                      //                 const Icon(
                      //                   Icons.currency_rupee,
                      //                   size: 15,
                      //                 ),
                      //                 Text('1,89,999',
                      //                     style: GoogleFonts.quantico(
                      //                       fontWeight: FontWeight.w700,
                      //                       fontSize: 13,
                      //                       color: const Color(0xff565656),
                      //                     )),
                      //               ],
                      //             )
                      //           ],
                      //         ),
                      //       ),

                      //       //-----------------------------------------------------------------------------------------------------------------------------------------

                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.only(left: 15, bottom: 30),
                      //         child: Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Image.asset('assets/Rectangle 18823 (1).png'),
                      //             Text('Apple',
                      //                 style: GoogleFonts.quicksand(
                      //                   fontWeight: FontWeight.w700,
                      //                   fontSize: 12,
                      //                   color: Colors.black,
                      //                 )),
                      //             Padding(
                      //               padding: const EdgeInsets.only(top: 5),
                      //               child: Text('Airpods Pro',
                      //                   style: GoogleFonts.quicksand(
                      //                     fontWeight: FontWeight.w500,
                      //                     fontSize: 10,
                      //                     color: Colors.black,
                      //                   )),
                      //             ),
                      //             Text('',
                      //                 style: GoogleFonts.quicksand(
                      //                   fontWeight: FontWeight.w400,
                      //                   fontSize: 8,
                      //                   color: const Color(0xff565656),
                      //                 )),
                      //             Row(
                      //               children: [
                      //                 const Icon(
                      //                   Icons.currency_rupee,
                      //                   size: 15,
                      //                 ),
                      //                 Text('21,499',
                      //                     style: GoogleFonts.quantico(
                      //                       fontWeight: FontWeight.w700,
                      //                       fontSize: 13,
                      //                       color: const Color(0xff565656),
                      //                     )),
                      //               ],
                      //             )
                      //           ],
                      //         ),
                      //       ),

                      //       //-----------------------------------------------------------------------------------------------------------------------------------------

                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.only(left: 15, bottom: 30),
                      //         child: Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Image.asset('assets/Group 12595.png'),
                      //             Text('APPLE',
                      //                 style: GoogleFonts.quicksand(
                      //                   fontWeight: FontWeight.w700,
                      //                   fontSize: 12,
                      //                   color: Colors.black,
                      //                 )),
                      //             Text('Apple iPhone 14 Pro 512GB',
                      //                 style: GoogleFonts.quicksand(
                      //                   fontWeight: FontWeight.w500,
                      //                   fontSize: 10,
                      //                   color: Colors.black,
                      //                 )),
                      //             Text('Free Delivery',
                      //                 style: GoogleFonts.quicksand(
                      //                   fontWeight: FontWeight.w400,
                      //                   fontSize: 8,
                      //                   color: const Color(0xff565656),
                      //                 )),
                      //             Row(
                      //               children: [
                      //                 const Icon(
                      //                   Icons.currency_rupee,
                      //                   size: 15,
                      //                 ),
                      //                 Text('1,89,999',
                      //                     style: GoogleFonts.quantico(
                      //                       fontWeight: FontWeight.w700,
                      //                       fontSize: 13,
                      //                       color: const Color(0xff565656),
                      //                     )),
                      //               ],
                      //             )
                      //           ],
                      //         ),
                      //       ),

                      //       //-----------------------------------------------------------------------------------------------------------------------------------------
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }

  // void storage() async {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return Container(
  //         width: double.infinity,
  //         height: 400,
  //         decoration: const BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.only(
  //                 topRight: Radius.circular(20), topLeft: Radius.circular(20))),
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 20, left: 0, right: 0),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Text('Select Storage',
  //                   style: GoogleFonts.lexendDeca(
  //                     fontWeight: FontWeight.w700,
  //                     fontSize: 25,
  //                     color: const Color(0xff565656),
  //                   )),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 30),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     const Icon(Icons.circle_outlined),
  //                     Text('        128 GB',
  //                         style: GoogleFonts.lexendDeca(
  //                           fontWeight: FontWeight.w500,
  //                           fontSize: 17,
  //                           color: const Color(0xff565656),
  //                         )),
  //                   ],
  //                 ),
  //               ),

  //               //--------------------------------------------------------------------------------------
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 20),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     const Icon(Icons.circle, color: Colors.purple),
  //                     Text('        256 GB',
  //                         style: GoogleFonts.lexendDeca(
  //                           fontWeight: FontWeight.w500,
  //                           fontSize: 17,
  //                           color: const Color(0xff565656),
  //                         )),
  //                   ],
  //                 ),
  //               ),

  //               //--------------------------------------------------------------------------------------

  //               Padding(
  //                 padding: const EdgeInsets.only(top: 20),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     const Icon(Icons.circle_outlined),
  //                     Text('        512 GB',
  //                         style: GoogleFonts.lexendDeca(
  //                           fontWeight: FontWeight.w500,
  //                           fontSize: 17,
  //                           color: const Color(0xff565656),
  //                         )),
  //                   ],
  //                 ),
  //               ),

  //               //--------------------------------------------------------------------------------------

  //               Padding(
  //                 padding: const EdgeInsets.only(top: 20, bottom: 0),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     const Icon(Icons.circle_outlined),
  //                     Text('        1 TB    ',
  //                         style: GoogleFonts.lexendDeca(
  //                           fontWeight: FontWeight.w500,
  //                           fontSize: 17,
  //                           color: const Color(0xff565656),
  //                         )),
  //                   ],
  //                 ),
  //               ),

  //               //--------------------------------------------------------------------------------------

  //               Padding(
  //                 padding: const EdgeInsets.only(
  //                     left: 40, right: 40, top: 30, bottom: 30),
  //                 child: InkWell(
  //                   onTap: () {
  //                     Navigator.pushReplacement(context, MaterialPageRoute(
  //                       builder: (context) {
  //                         return const CartPage();
  //                       },
  //                     ));
  //                   },
  //                   child: Container(
  //                     width: double.infinity,
  //                     height: 45,
  //                     decoration: BoxDecoration(
  //                         color: const Color(0xffB7A6FC),
  //                         borderRadius: BorderRadius.circular(10)),
  //                     child: Center(
  //                       child: Text('Continue',
  //                           style: GoogleFonts.lexendDeca(
  //                             fontWeight: FontWeight.w700,
  //                             fontSize: 23,
  //                             color: Colors.white,
  //                           )),
  //                     ),
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
