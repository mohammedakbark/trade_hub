import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/view/Modules/user/addproduct.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';
import 'package:trade_hub/viewmodel/firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class Homeee extends StatefulWidget {
  const Homeee({super.key});

  @override
  State<Homeee> createState() => _HomeeeState();
}

class _HomeeeState extends State<Homeee> {
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          // leading: ,
          centerTitle: true,

          title: Text(
            'TradeHub',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 35,
                color: const Color(0xffB7A6FC)),
          ),
        ),
        body: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 40, right: 40, top: 10, bottom: 10),
            //   child: Container(
            //     width: 340,
            //     height: 36,
            //     decoration: BoxDecoration(
            //         color: const Color(0x60B7A6FC),
            //         borderRadius: BorderRadius.circular(6)),
            //     child: const TextField(
            //       decoration: InputDecoration(
            //           border: InputBorder.none,
            //           hintText: 'Search here',
            //           prefixIcon: Icon(Icons.search),
            //           hintStyle: TextStyle(
            //               color: Color(0xff544C4C),
            //               fontWeight: FontWeight.w500,
            //               fontSize: 14)),
            //     ),
            //   ),
            // ),
            Consumer<Firestore>(builder: (context, firestore, child) {
              return FutureBuilder(
                  future: firestore.fetchAllProductBarterAdded(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final data = firestore.allBarterProductList;
                    return data.isEmpty
                        ? const Center(
                            child: Text("Data not found.."),
                          )
                        : Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: hight * .0009),
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          child: Image.network(
                                            data[index].image1,
                                            height: 150,
                                            width: width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                data[index].productName,
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black),
                                              ),
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.location_pin,
                                                    color: Color(0xffB7A6FC),
                                                    size: 17,
                                                  ),
                                                  Text(
                                                    data[index]
                                                        .location
                                                        .toUpperCase(),
                                                    style: GoogleFonts.poppins(
                                                        color:
                                                            Color(0xffB7A6FC)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          data[index].details,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  content: Text(
                                                    "Do you want to chat with ${data[index].username.toUpperCase()}",
                                                    style:
                                                        GoogleFonts.poppins(),
                                                  ),
                                                  actionsAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          "NO",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .red),
                                                        )),
                                                    TextButton(
                                                        onPressed: () async {
                                                          try {
                                                            await whatsapp(
                                                                data[index]
                                                                    .whatsappNumber,
                                                                data[index]
                                                                    .productName);
                                                          } catch (e) {
                                                            return customeShowDiolog(
                                                                "$e", context);
                                                          }
                                                        },
                                                        child: Text(
                                                          "YES",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  color: Colors
                                                                      .green),
                                                        ))
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                data[index]
                                                    .username
                                                    .toUpperCase(),
                                                maxLines: 1,
                                                style: GoogleFonts.poppins(),
                                              ),
                                              Image.asset(
                                                "assets/whatsapp.png",
                                                scale: 24,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                  });
            })
          ],
        ),
        // bottomNavigationBar: Container(
        //   color: Colors.transparent,
        //   height: 0,
        // ),
        // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: hight * .1),
          child: FloatingActionButton(
            tooltip: "Add Product",
            backgroundColor: const Color(0xffB7A6FC),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddProductPage()));
            },
            child: const Icon(Icons.add_a_photo),
          ),
        ));
  }

  whatsapp(contactNumber, productName) async {
    var contact = "+91$contactNumber";
    var androidUrl =
        "whatsapp://send?phone=$contact&text=Hi, I am intrested on your product $productName,if you intrested to exchange please replay.. ";
    var iosUrl =
        "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}";

    try {
      if (Platform.isIOS) {
        await launchUrl(Uri.parse(iosUrl));
      } else {
        await launchUrl(Uri.parse(androidUrl));
      }
    } catch (e) {
      print(e);
    }
  }
}
