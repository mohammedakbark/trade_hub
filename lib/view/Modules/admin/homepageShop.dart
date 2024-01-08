import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/admin/addproductShop.dart';
import 'package:trade_hub/view/Modules/admin/profile_shop.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class HomePageShop extends StatefulWidget {
  const HomePageShop({super.key});

  @override
  State<HomePageShop> createState() => _HomePageShopState();
}

class _HomePageShopState extends State<HomePageShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      body: Consumer<Firestore>(builder: (context, firestore, child) {
        return FutureBuilder(
            future: firestore.fetchCurrentShop(currentUID),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final data = firestore.shopDataModel;

              return Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${data?.shopNmae}",
                              style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 13),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfileShop()));
                              },
                              child: Column(
                                children: [
                                  Image.asset('assets/View_alt.png'),
                                  Text(
                                    'view Shop',
                                    style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: const Color(0xff1D1E20)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Stack(
                      children: [
                        data?.shopImage == ""
                            ? Image.asset(
                                'assets/Group 12653.png',
                                width: 370,
                              )
                            : Container(
                                margin: EdgeInsets.all(13),
                                width: MediaQuery.of(context).size.width,
                                height: 107,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        "${data?.shopImage}",
                                      ),
                                    ),
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(60),
                                        topRight: Radius.circular(4),
                                        bottomLeft: Radius.circular(4),
                                        bottomRight: Radius.circular(4))),
                              ),
                        // Padding(
                        //   padding:
                        //       const EdgeInsets.only(left: 20, top: 60),
                        //   child:
                        //       Image.asset('assets/Group 12655 (2).png'),
                        // ),
                        Padding(
                            padding: const EdgeInsets.only(left: 30, top: 60),
                            child: data?.tagImage == ""
                                ? Image.asset('assets/Vector (1).png')
                                : Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                                "${data?.tagImage}"))),
                                  )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          // Image.asset('assets/Rectangle 18818.png'),
                          data?.shopImage == ""
                              ? Image.asset(
                                  'assets/Rectangle 18818.png',
                                  width: 370,
                                )
                              : Container(
                                  margin: EdgeInsets.only(
                                      left: 45,
                                      right: 45,
                                      top: 12,
                                      bottom: 12),
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              "${data?.shopImage}"))),
                                ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset('assets/Group 3.png'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AddProductPageShop(
                                        shopName: "${data?.shopNmae}",
                                      )));
                            },
                            child: Container(
                              width: 147,
                              height: 28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: const Color(0xff7A00E6),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 3,
                                        offset: Offset(5, 5)),
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add Product ',
                                    style: GoogleFonts.lexendDeca(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                  Image.asset('assets/+.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    FutureBuilder(
                        future:
                            firestore.fetchAllProductShopAdded(FirebaseAuth.instance.currentUser!.uid),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          final list = firestore.curentshopProductList;

                          return list.isEmpty
                              ?const Expanded(
                                  child: SizedBox(
                                  child: Center(
                                    child: Text(
                                      "Product not Found",
                                      style: TextStyle(fontSize: 22),
                                    ),
                                  ),
                                ))
                              : Expanded(
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: .8,
                                      crossAxisCount: 2,
                                    ),
                                    itemCount: list.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .18,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .18,
                                              child: Image.network(
                                                list[index].productImage,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 20),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                list[index].productName,
                                                style: GoogleFonts.quicksand(
                                                    fontWeight:
                                                        FontWeight.w700,
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 20),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                list[index]
                                                    .productDescription,
                                                style: GoogleFonts.quicksand(
                                                    fontWeight:
                                                        FontWeight.w500,
                                                    fontSize: 10,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                    'assets/Rupee (INR).png'),
                                                Text(
                                                  list[index].amount,
                                                  style: GoogleFonts.quantico(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                );
                        })
                    //====================================================================================================================

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 30),
                    //   child: Text(
                    //     'Category name',
                    //     style: GoogleFonts.inter(
                    //         fontWeight: FontWeight.w400,
                    //         fontSize: 18,
                    //         color: const Color(0xff5B5B5B)),
                    //   ),
                    // ),

                    //==================================================================================================================================
                  ],
                ),
              );
            });
      }),
    );
  }
}
