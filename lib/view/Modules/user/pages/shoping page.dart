import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/model/addProductShopModel.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/buyselectedproduct.dart';
import 'package:trade_hub/viewmodel/controller.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class Shoppingpageee extends StatefulWidget {
  const Shoppingpageee({super.key});

  @override
  State<Shoppingpageee> createState() => _ShoppingpageeeState();
}

class _ShoppingpageeeState extends State<Shoppingpageee> {
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Consumer2<Firestore, Controller>(
          builder: (context, firestore, controller, child) {
        return FutureBuilder(
            future: firestore.fetchShoDataForUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              controller.allProductData = firestore.allShopProductList;
              final allShopData = firestore.allShopDataList;
              return Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shop',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400,
                              fontSize: 28,
                              color: const Color(0xffB7A6FC)),
                        ),
                        // const Icon(
                        //   Icons.shopping_cart_outlined,
                        //   size: 30,
                        // )
                      ],
                    ),
                  ),

                  // Padding(
                  //   padding:
                  //       const EdgeInsets.only(left: 20, right: 20, top: 10),
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

                  //====================================================================================================================

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        Image.asset('assets/Rectangle 18818 (1).png'),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/Group 3.png'),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Shops',
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),

                  //============================================================================================================
                  allShopData.isEmpty
                      ? Center(
                          child: Text("No shops available at the moment"),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                            // color: Colors.red,
                            width: width,
                            height: hight * .13,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: allShopData.length,
                                itemBuilder: (context, index) => InkWell(
                                      onTap: () async {
                                        // print(allShopData[index].shopID);
                                        print(allShopData[index].shopID);
                                        print("==================");
                                        await firestore
                                            .fetchselectedAllShopProduct(
                                                allShopData[index].shopID);

                                        // controller.allProductData =
                                        //     firestore.selectedShopProductsList;
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, right: 10, bottom: 5),
                                            height: hight * .09,
                                            width: hight * .09,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  strokeAlign: BorderSide
                                                      .strokeAlignOutside,
                                                  color: Color(0x60B7A6FC),
                                                  width: 4,
                                                ),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: NetworkImage(
                                                        allShopData[index]
                                                            .tagImage))),
                                          ),
                                          Text(
                                            allShopData[index].shopNmae,
                                            style: GoogleFonts.hanuman(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                    )),
                          ),
                        ),
// ==========================================================================================================================

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Discover',
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: hight * .0010,
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 5),
                          itemCount: firestore.selectedShopProductsList.isEmpty
                              ? controller.allProductData?.length
                              : firestore.selectedShopProductsList.length,
                          itemBuilder: (context, index) {
                            if (firestore.selectedShopProductsList.isNotEmpty) {
                              controller.allProductData =
                                  firestore.selectedShopProductsList;
                            }

                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BuySelectedProductPage(
                                              shopName:
                                                  "${controller.allProductData?[index].shopName}",
                                              upiID:
                                                  "${controller.allProductData?[index].upiID}",
                                              shopID:
                                                  "${controller.allProductData?[index].shopId}",
                                              selectedProductID:
                                                  "${controller.allProductData?[index].productId}",
                                            )));
                              },
                              child: Center(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: SizedBox(
                                          height: hight * .17,
                                          width: width * .4,
                                          child: Image.network(
                                            controller.allProductData![index]
                                                .productImage,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                          controller.allProductData![index]
                                              .productName,
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                      Text(
                                          controller.allProductData![index]
                                              .productDescription,
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            color: Colors.black,
                                          )),
                                      Text(
                                          controller.allProductData![index]
                                              .isFreeDelivery,
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8,
                                            color: const Color(0xff565656),
                                          )),
                                      Text(
                                          "₹ ${controller.allProductData![index].amount}",
                                          style: GoogleFonts.quantico(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                            color: Colors.black,
                                          )),
                                    ]),
                              ),
                            );
                          }))
                ],
              );
            });
      }),
    );
  }
}
