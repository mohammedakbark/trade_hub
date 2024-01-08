// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class ProfileShop extends StatelessWidget {
  const ProfileShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF6565),
        centerTitle: true,
        title: Text(
          'Shop Details',
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.w600, fontSize: 28, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Consumer<Firestore>(builder: (context, fireestore, child) {
          final data = fireestore.shopDataModel;
          return Column(
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 13, right: 13, top: 20),
                  child: Stack(
                    children: [
                      //     Container(
                      //       width: double.infinity,
                      //       height: 107,
                      //       decoration: const BoxDecoration(
                      //           color: Colors.white,
                      //           borderRadius: BorderRadius.only(
                      //               topLeft: Radius.circular(60),
                      //               topRight: Radius.circular(4),
                      //               bottomLeft: Radius.circular(4),
                      //               bottomRight: Radius.circular(4))),
                      //       child: Column(
                      //         children: [
                      //           Padding(
                      //             padding: const EdgeInsets.only(top: 25),
                      //             child: Image.asset('assets/Img_box.png'),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.only(right: 10),
                      //             child: Row(
                      //               mainAxisAlignment: MainAxisAlignment.end,
                      //               children: [Image.asset('assets/Camera.png')],
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.only(top: 70, left: 20),
                      //       child: Image.asset('assets/Group 12655.png'),
                      //     )
                    ],
                  )),

              //=================================================================Shope info=========================================================

              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  'Shope Info',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.52,
                      color: const Color(0xff5B5B5B)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
                child: Container(
                  width: double.infinity,
                  // height: 581,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: Offset(5, 5)),
                      ]),

                  //-----------------------------------------------------------shope name--------------------------------------------------------------------------------------

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Shope Name',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: shopName,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              // border: InputBorder.none,
                              hintText: "${data?.shopNmae}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //-----------------------------------email-------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Email',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: email,
                          // validator: (value) {
                          //   bool emailvalid = RegExp(
                          //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          //       .hasMatch(value!);

                          //   if (value.isEmpty) {
                          //     return "Enter Email";
                          //   } else if (!emailvalid) {
                          //     return "Enter Valied Email";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.email}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //-----------------------------------biography-------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Biography',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: biography,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.biography}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //-----------------------------------country-------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Country/region',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: country,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.country}",
                              // suffixIcon: Icon(Icons.keyboard_arrow_down),
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //-----------------------------------number-------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Phone Number',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 35, top: 10, bottom: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: phoneNumber,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.phoneNumber}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Upi ID',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 35, top: 10, bottom: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: phoneNumber,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.upiID}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //-----------------------------------save-------------------------------------------------------------------------------------------------------

                      // Padding(
                      //   padding: const EdgeInsets.only(right: 20, top: 10),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: [
                      //       Container(
                      //           width: 84,
                      //           height: 34,
                      //           decoration: BoxDecoration(
                      //               color: const Color(0xff7047EB),
                      //               borderRadius: BorderRadius.circular(5)),
                      //           child: Center(
                      //             child: Text(
                      //               'Save',
                      //               style: GoogleFonts.inter(
                      //                 fontWeight: FontWeight.w500,
                      //                 fontSize: 14,
                      //                 color: Colors.white,
                      //               ),
                      //             ),
                      //           ))
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),

              //======================================shop address===================================================================================

              Padding(
                padding: const EdgeInsets.only(left: 23, top: 20, bottom: 20),
                child: Text(
                  'Shope Address',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.52,
                      color: const Color(0xff5B5B5B)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
                child: Container(
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height * .7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: Offset(5, 5)),
                      ]),

                  //-------------------------------------------------------------------------------------------------------------------------------------------------

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Legal Bussiness Name',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: legalbusinessnmae,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.legalBusinessName}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //------------------------------------------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Address Line 1',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: address1,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.address1}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //------------------------------------------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Address Line 2',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: address2,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.address2}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //------------------------------------------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'City',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: city,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.city}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //------------------------------------------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Post Code/Zip',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: pincode,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.pincode}",
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //-----------------------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Country',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 35, top: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: country2,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.country2}",
                              // suffixIcon:
                              //     Icon(Icons.keyboard_arrow_down_rounded),
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //-----------------------------------------------------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'State',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 35, top: 10, bottom: 10),
                        child: TextFormField(
                          enabled: false,
                          // controller: state,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "this field is necessory";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: InputDecoration(
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff544C4C99)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff544C4C99)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              border: InputBorder.none,
                              hintText: "${data?.state}",
                              // suffixIcon:
                              //     Icon(Icons.keyboard_arrow_down_rounded),
                              hintStyle: TextStyle(
                                  color: Color(0xff544C4C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ),

                      //-----------------------------------------------------------------------------------------------------------------------

                      // Padding(
                      //   padding: const EdgeInsets.only(left: 20, top: 15),
                      //   child: Row(
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.only(left: 5),
                      //         child: Text(
                      //           'Locate On Map',
                      //           style: GoogleFonts.inter(
                      //               fontWeight: FontWeight.w700,
                      //               fontSize: 15,
                      //               color: const Color(0xff1D1E20)),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Padding(
                      //   padding:
                      //       const EdgeInsets.only(left: 20, right: 35, top: 10),
                      //   child: Container(
                      //     width: double.infinity,
                      //     height: 44,
                      //     decoration: BoxDecoration(
                      //         border: Border.all(color: const Color(0xff544C4C99)),
                      //         borderRadius: BorderRadius.circular(6)),
                      //     : const TextFormField(

                      //       decoration: InputDecoration(
                      //           border: InputBorder.none,
                      //           hintText: '      Kerala,malappuram,peinthalmanna',
                      //           suffixIcon: Icon(Icons.my_location),
                      //           hintStyle: TextStyle(
                      //               color: Color(0xff544C4C),
                      //               fontWeight: FontWeight.w500,
                      //               fontSize: 14)),
                      //     ),
                      //   ),
                      // ),

                      //------------------------------------------------------------------------------------------------------

                      // Padding(
                      //   padding: const EdgeInsets.only(top: 20),
                      //   child: Image.asset('assets/image 5.png'),
                      // ),

                      //-----------------------------------save-------------------------------------------------------------------------------------------------------

                      // Padding(
                      //   padding: const EdgeInsets.only(right: 20, top: 10),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: [
                      //       Container(
                      //           width: 84,
                      //           height: 34,
                      //           decoration: BoxDecoration(
                      //               color: const Color(0xff7047EB),
                      //               borderRadius: BorderRadius.circular(5)),
                      //           child: Center(
                      //             child: Text(
                      //               'Save',
                      //               style: GoogleFonts.inter(
                      //                 fontWeight: FontWeight.w500,
                      //                 fontSize: 14,
                      //                 color: Colors.white,
                      //               ),
                      //             ),
                      //           ))
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),

              //======================================shop address===================================================================================

              // Padding(
              //   padding: const EdgeInsets.only(left: 23, top: 20),
              //   child: Text(
              //     'Shope Address',
              //     style: GoogleFonts.inter(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 15.52,
              //         color: const Color(0xff5B5B5B)),
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
              //   child: Container(
              //     width: double.infinity,
              //     height: 581,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(8),
              //         color: Colors.white,
              //         boxShadow: const [
              //           BoxShadow(
              //               color: Colors.black,
              //               blurRadius: 10,
              //               offset: Offset(5, 5)),
              //         ]),

              //     //-------------------------------------------------------------------------------------------------------------------------------------------------

              //     child: Column(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(left: 20, top: 20),
              //           child: Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 5),
              //                 child: Text(
              //                   'Product Per Page',
              //                   style: GoogleFonts.inter(
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 15,
              //                       color: const Color(0xff1D1E20)),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 20, right: 35, top: 10),
              //           child: Container(
              //             width: double.infinity,
              //             height: 44,
              //             decoration: BoxDecoration(
              //                 border: Border.all(color: const Color(0xff544C4C99)),
              //                 borderRadius: BorderRadius.circular(6)),
              //        child: const TextFormField(
              // controller: ,

              //  validator: (value) {
              //                   if (value!.isEmpty) {
              //                     return "this field is necessory";
              //                   } else {
              //                     return null;
              //                   }
              //                 },  //               decoration: InputDecoration(
              //                   border: InputBorder.none,
              //                   hintText: '      25',
              //                   suffixIcon: Icon(
              //                     Icons.keyboard_arrow_down_rounded,
              //                     size: 30,
              //                   ),
              //                   hintStyle: TextStyle(
              //                       color: Color(0xff544C4C),
              //                       fontWeight: FontWeight.w500,
              //                       fontSize: 14)),
              //             ),
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding: const EdgeInsets.only(left: 20, top: 20),
              //           child: Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 5),
              //                 child: Text(
              //                   'Store Visibility',
              //                   style: GoogleFonts.inter(
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 15,
              //                       color: const Color(0xff1D1E20)),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 20, right: 35, top: 10),
              //           child: Container(
              //             width: double.infinity,
              //             height: 44,
              //             decoration: BoxDecoration(
              //                 border: Border.all(color: const Color(0xff544C4C99)),
              //                 borderRadius: BorderRadius.circular(6)),
              //        child: const TextFormField(
              // controller: ,
              //               decoration: InputDecoration(
              //                   border: InputBorder.none,
              //                   hintText: '      Public',
              //                   suffixIcon: Icon(
              //                     Icons.keyboard_arrow_down_rounded,
              //                     size: 30,
              //                   ),
              //                   hintStyle: TextStyle(
              //                       color: Color(0xff544C4C),
              //                       fontWeight: FontWeight.w500,
              //                       fontSize: 14)),
              //             ),
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding: const EdgeInsets.only(left: 20, top: 15),
              //           child: Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 5),
              //                 child: Text(
              //                   'Terms & conditions',
              //                   style: GoogleFonts.inter(
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 15,
              //                       color: const Color(0xff1D1E20)),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 20, right: 35, top: 10),
              //           child: Container(
              //             width: double.infinity,
              //             height: 116,
              //             decoration: BoxDecoration(
              //                 border: Border.all(color: const Color(0xff544C4C99)),
              //                 borderRadius: BorderRadius.circular(6)),
              //        child: const TextFormField(
              // controller: ,
              //               decoration: InputDecoration(
              //                   border: InputBorder.none,
              //                   hintText: '      Write Here',
              //                   hintStyle: TextStyle(
              //                       color: Color(0xff544C4C),
              //                       fontWeight: FontWeight.w500,
              //                       fontSize: 14)),
              //             ),
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------------------------------
              //         Padding(
              //           padding: const EdgeInsets.only(left: 20, top: 20),
              //           child: Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 5),
              //                 child: Text(
              //                   'Store Categories',
              //                   style: GoogleFonts.inter(
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 15,
              //                       color: const Color(0xff1D1E20)),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 20, right: 35, top: 10),
              //           child: Container(
              //             width: double.infinity,
              //             height: 44,
              //             decoration: BoxDecoration(
              //                 border: Border.all(color: const Color(0xff544C4C99)),
              //                 borderRadius: BorderRadius.circular(6)),
              //        child: const TextFormField(
              // controller: ,
              //               decoration: InputDecoration(
              //                   border: InputBorder.none,
              //                   hintText: '      Electronics',
              //                   suffixIcon: Icon(
              //                     Icons.keyboard_arrow_down_rounded,
              //                     size: 30,
              //                   ),
              //                   hintStyle: TextStyle(
              //                       color: Color(0xff544C4C),
              //                       fontWeight: FontWeight.w500,
              //                       fontSize: 14)),
              //             ),
              //           ),
              //         ),

              //         //----------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding: const EdgeInsets.only(right: 20, top: 30),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Container(
              //                   width: 79,
              //                   height: 31,
              //                   decoration: BoxDecoration(
              //                       color: const Color(0xff7A00E6),
              //                       borderRadius: BorderRadius.circular(5)),
              //                   child: Center(
              //                     child: Text(
              //                       'Fashion',
              //                       style: GoogleFonts.inter(
              //                         fontWeight: FontWeight.w500,
              //                         fontSize: 14,
              //                         color: Colors.white,
              //                       ),
              //                     ),
              //                   )),
              //               Container(
              //                   width: 120,
              //                   height: 31,
              //                   decoration: BoxDecoration(
              //                       color: const Color(0xff7A00E6),
              //                       borderRadius: BorderRadius.circular(5)),
              //                   child: Center(
              //                     child: Text(
              //                       'Cosmetics',
              //                       style: GoogleFonts.inter(
              //                         fontWeight: FontWeight.w500,
              //                         fontSize: 14,
              //                         color: Colors.white,
              //                       ),
              //                     ),
              //                   )),
              //               Container(
              //                   width: 74,
              //                   height: 31,
              //                   decoration: BoxDecoration(
              //                       color: const Color(0xff7A00E6),
              //                       borderRadius: BorderRadius.circular(5)),
              //                   child: Center(
              //                     child: Text(
              //                       'Beauty',
              //                       style: GoogleFonts.inter(
              //                         fontWeight: FontWeight.w500,
              //                         fontSize: 14,
              //                         color: Colors.white,
              //                       ),
              //                     ),
              //                   )),
              //             ],
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),

              //======================================Linked address===================================================================================

              // Padding(
              //   padding: const EdgeInsets.only(left: 23, top: 20),
              //   child: Text(
              //     'Shope Address',
              //     style: GoogleFonts.inter(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 15.52,
              //         color: const Color(0xff5B5B5B)),
              //   ),
              // ),

              //---------------------------------------------------------------------------------------------------

              // Padding(
              //   padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
              //   child: Container(
              //     height: 581,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(8),
              //         color: Colors.white,
              //         boxShadow: const [
              //           BoxShadow(
              //               color: Colors.black,
              //               blurRadius: 10,
              //               offset: Offset(5, 5)),
              //         ]),
              //     child: Column(
              //       children: [
              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 25, right: 70, top: 50),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.asset('assets/globe.png'),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10),
              //                     child: Text(
              //                       'Website',
              //                       style: GoogleFonts.inter(
              //                           fontWeight: FontWeight.w700,
              //                           fontSize: 15,
              //                           color: const Color(0xff1D1E20)),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Text(
              //                 '+',
              //                 style: GoogleFonts.inter(
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 24,
              //                     color: Colors.black),
              //               ),
              //             ],
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 25, right: 70, top: 45),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.asset('assets/WhatsApp.png'),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10),
              //                     child: Text(
              //                       'Whatsapp',
              //                       style: GoogleFonts.inter(
              //                           fontWeight: FontWeight.w700,
              //                           fontSize: 15,
              //                           color: const Color(0xff1D1E20)),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Text(
              //                 '+',
              //                 style: GoogleFonts.inter(
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 24,
              //                     color: Colors.black),
              //               ),
              //             ],
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 25, right: 70, top: 45),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.asset('assets/Facebook (2).png'),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10),
              //                     child: Text(
              //                       'Facebook',
              //                       style: GoogleFonts.inter(
              //                           fontWeight: FontWeight.w700,
              //                           fontSize: 15,
              //                           color: const Color(0xff1D1E20)),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Text(
              //                 '+',
              //                 style: GoogleFonts.inter(
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 24,
              //                     color: Colors.black),
              //               ),
              //             ],
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 25, right: 70, top: 45),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.asset('assets/Twitter.png'),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10),
              //                     child: Text(
              //                       'Twitter',
              //                       style: GoogleFonts.inter(
              //                           fontWeight: FontWeight.w700,
              //                           fontSize: 15,
              //                           color: const Color(0xff1D1E20)),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Text(
              //                 '+',
              //                 style: GoogleFonts.inter(
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 24,
              //                     color: Colors.black),
              //               ),
              //             ],
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 25, right: 70, top: 45),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.asset('assets/Instagram.png'),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10),
              //                     child: Text(
              //                       'Instagram',
              //                       style: GoogleFonts.inter(
              //                           fontWeight: FontWeight.w700,
              //                           fontSize: 15,
              //                           color: const Color(0xff1D1E20)),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Text(
              //                 '+',
              //                 style: GoogleFonts.inter(
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 24,
              //                     color: Colors.black),
              //               ),
              //             ],
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding:
              //               const EdgeInsets.only(left: 25, right: 70, top: 45),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.asset('assets/Headphones_fill.png'),
              //                   Padding(
              //                     padding: const EdgeInsets.only(left: 10),
              //                     child: Text(
              //                       'Customer Service',
              //                       style: GoogleFonts.inter(
              //                           fontWeight: FontWeight.w700,
              //                           fontSize: 15,
              //                           color: const Color(0xff1D1E20)),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Text(
              //                 '+',
              //                 style: GoogleFonts.inter(
              //                     fontWeight: FontWeight.w500,
              //                     fontSize: 24,
              //                     color: Colors.black),
              //               ),
              //             ],
              //           ),
              //         ),

              //         //------------------------------------------------------------------------------------------------------------------

              //         Padding(
              //           padding: const EdgeInsets.only(right: 20, top: 45),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.end,
              //             children: [
              //               Container(
              //                   width: 84,
              //                   height: 34,
              //                   decoration: BoxDecoration(
              //                       color: const Color(0xff7047EB),
              //                       borderRadius: BorderRadius.circular(5)),
              //                   child: Center(
              //                     child: Text(
              //                       'Save',
              //                       style: GoogleFonts.inter(
              //                         fontWeight: FontWeight.w500,
              //                         fontSize: 14,
              //                         color: Colors.white,
              //                       ),
              //                     ),
              //                   ))
              //             ],
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),

              //======================submit===============================================================================

              // Padding(
              //   padding: const EdgeInsets.only(top: 30, bottom: 50),
              //   child: InkWell(
              //       onTap: () {
              //         if (_formKey.currentState!.validate()) {
              //           showDialog(
              //               context: context,
              //               builder: (context) => AlertDialog(
              //                     title: Form(
              //                       key: _formKey2,
              //                       child: Column(
              //                         children: [
              //                           TextFormField(
              //                             enabled: false,
              //                             controller: email,
              //                             decoration: const InputDecoration(
              //                                 enabled: false,
              //                                 focusedErrorBorder: OutlineInputBorder(
              //                                     borderSide: BorderSide.none,
              //                                     borderRadius: BorderRadius.all(
              //                                         Radius.circular(30))),
              //                                 errorBorder: OutlineInputBorder(
              //                                     borderSide: BorderSide.none,
              //                                     borderRadius: BorderRadius.all(
              //                                         Radius.circular(30))),
              //                                 enabledBorder: OutlineInputBorder(
              //                                     borderSide: BorderSide.none,
              //                                     borderRadius: BorderRadius.all(
              //                                         Radius.circular(30))),
              //                                 disabledBorder: OutlineInputBorder(
              //                                     borderSide: BorderSide.none,
              //                                     borderRadius: BorderRadius.all(
              //                                         Radius.circular(30))),
              //                                 focusedBorder: OutlineInputBorder(
              //                                     borderSide: BorderSide.none,
              //                                     borderRadius:
              //                                         BorderRadius.all(
              //                                             Radius.circular(30))),
              //                                 // border: InputBorder.none,
              //                                 filled: true,
              //                                 fillColor: Color(0xffFF6565),
              //                                 hintText: 'enter your email',
              //                                 hintStyle: TextStyle(color: Color(0xff544C4C), fontWeight: FontWeight.w500, fontSize: 14)),
              //                             validator: (value) {
              //                               bool emailvalid = RegExp(
              //                                       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              //                                   .hasMatch(value!);

              //                               if (value.isEmpty) {
              //                                 return "Enter Email";
              //                               } else if (!emailvalid) {
              //                                 return "Enter Valied Email";
              //                               } else {
              //                                 return null;
              //                               }
              //                             },
              //                           ),
              //                           const SizedBox(
              //                             height: 30,
              //                           ),
              //                           TextFormField(
              //                             controller: password,
              //                             obscureText: passToggle,
              //                             decoration: InputDecoration(
              //                                 filled: true,
              //                                 fillColor:
              //                                     const Color(0xffFF6565),
              //                                 focusedErrorBorder:
              //                                     const OutlineInputBorder(
              //                                         borderSide:
              //                                             BorderSide.none,
              //                                         borderRadius: BorderRadius.all(
              //                                             Radius.circular(30))),
              //                                 errorBorder: const OutlineInputBorder(
              //                                     borderSide: BorderSide.none,
              //                                     borderRadius: BorderRadius.all(
              //                                         Radius.circular(30))),
              //                                 enabledBorder: const OutlineInputBorder(
              //                                     borderSide: BorderSide.none,
              //                                     borderRadius:
              //                                         BorderRadius.all(
              //                                             Radius.circular(30))),
              //                                 focusedBorder: const OutlineInputBorder(
              //                                     borderSide: BorderSide.none,
              //                                     borderRadius:
              //                                         BorderRadius.all(
              //                                             Radius.circular(30))),
              //                                 border: InputBorder.none,
              //                                 hintText: ' password',
              //                                 hintStyle: const TextStyle(
              //                                     color: Color(0xff544C4C),
              //                                     fontWeight: FontWeight.w500,
              //                                     fontSize: 14),
              //                                 suffixIcon: InkWell(
              //                                   onTap: () {
              //                                     setState(() {
              //                                       passToggle = !passToggle;
              //                                     });
              //                                   },
              //                                   child: Padding(
              //                                     padding:
              //                                         const EdgeInsets.only(
              //                                             right: 20),
              //                                     child: Icon(passToggle
              //                                         ? Icons.visibility
              //                                         : Icons.visibility_off),
              //                                   ),
              //                                 )),
              //                             validator: (value) {
              //                               if (value!.isEmpty) {
              //                                 return "Entee Password";
              //                               } else if (password.text.length <
              //                                   6) {
              //                                 return "Password Length Should not be more than 6 characters";
              //                               } else {
              //                                 return null;
              //                               }
              //                             },
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                     actionsAlignment: MainAxisAlignment.center,
              //                     actions: [
              //                       Padding(
              //                         padding: const EdgeInsets.all(8.0),
              //                         child: ElevatedButton(
              //                             onPressed: () async {
              //                               if (_formKey2.currentState!
              //                                   .validate()) {
              //                                 await authInstence
              //                                     .sign(email.text,
              //                                         password.text, context)
              //                                     .then((value) async {
              //                                   await storeInstence
              //                                       .addShopCollection(
              //                                           FirebaseAuth.instance
              //                                               .currentUser?.uid,
              //                                           ShopDataModel(
              //                                               address1:
              //                                                   address1.text,
              //                                               tagImage: "",
              //                                               shopImage: "",
              //                                               type: "Shop",
              //                                               address2:
              //                                                   address2.text,
              //                                               biography:
              //                                                   biography.text,
              //                                               city: city.text,
              //                                               country:
              //                                                   country.text,
              //                                               country2:
              //                                                   country2.text,
              //                                               email: email.text,
              //                                               legalBusinessName:
              //                                                   legalbusinessnmae
              //                                                       .text,
              //                                               phoneNumber:
              //                                                   phoneNumber
              //                                                       .text,
              //                                               pincode:
              //                                                   pincode.text,
              //                                               shopID: FirebaseAuth
              //                                                   .instance
              //                                                   .currentUser!
              //                                                   .uid,
              //                                               shopNmae:
              //                                                   shopName.text,
              //                                               state: state.text));
              //                                   await storeInstence.addAllUser(
              //                                       FirebaseAuth.instance
              //                                           .currentUser!.uid,
              //                                       AllUserModel(
              //                                           email: email.text,
              //                                           type: "SHOP",
              //                                           userId: FirebaseAuth
              //                                               .instance
              //                                               .currentUser!
              //                                               .uid));
              //                                 });
              //                                 setLoginPrefertrue();
              //                                 Navigator.pushAndRemoveUntil(
              //                                     context,
              //                                     MaterialPageRoute(
              //                                         builder: (context) =>
              //                                             NavigationShop()),
              //                                     (route) => false);
              //                               }
              //                             },
              //                             child: Text("Create Account",
              //                                 style: GoogleFonts.inter(
              //                                     fontWeight: FontWeight.w700,
              //                                     fontSize: 15,
              //                                     color: const Color(
              //                                         0xff1D1E20)))),
              //                       )
              //                     ],
              //                   ));
              //         }
              //       },
              //       child: Image.asset('assets/Group 12680.png')),
              // )
            ],
          );
        }),
      ),
    );
  }
}
