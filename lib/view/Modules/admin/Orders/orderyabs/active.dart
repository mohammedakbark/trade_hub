import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class ActiveOrderAdmin extends StatefulWidget {
  const ActiveOrderAdmin({super.key});

  @override
  State<ActiveOrderAdmin> createState() => _ActiveOrderAdminState();
}

class _ActiveOrderAdminState extends State<ActiveOrderAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      body: Consumer<Firestore>(builder: (context, firestore, child) {
        return FutureBuilder(
            future: firestore.fetchAllActiveOrderForAdmin(FirebaseAuth.instance.currentUser!.uid),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return firestore.allActiveOrderListsinShop.isEmpty?Center(child: Text("No Data"),):ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(firestore
                                      .allActiveOrderListsinShop[index].image))),
                        ),
                        title: Text(
                            firestore.allActiveOrderListsinShop[index].productName),
                        subtitle:
                            Text(firestore.allActiveOrderListsinShop[index].amount),
                        trailing: ElevatedButton(
                            onPressed: () async {
                              await firestore.updateToSUBMITOrder(
                                  firestore.allActiveOrderListsinShop[index].userID,
                                  firestore.allActiveOrderListsinShop[index].id,FirebaseAuth.instance.currentUser!.uid);
                            },
                            child: Text(
                              "Submit Order",
                            )));
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: firestore.allActiveOrderListsinShop.length);
            });
      }),
      // body: colu(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 20, top: 20),
      //       child: Row(
      //         children: [
      //           Image.asset('assets/Rectangle 18828.png'),
      //           Padding(
      //             padding: const EdgeInsets.only(left: 15),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   'Smart watch',
      //                   style: GoogleFonts.inter(
      //                       fontWeight: FontWeight.w400,
      //                       fontSize: 19,
      //                       color: Colors.black),
      //                 ),
      //                 Row(
      //                   children: [
      //                     Text(
      //                       '₹2,100 ',
      //                       style: GoogleFonts.inter(
      //                           fontWeight: FontWeight.w400,
      //                           fontSize: 16,
      //                           color: const Color(0xff878787)),
      //                     ),
      //                     const Icon(
      //                       Icons.star,
      //                       size: 13,
      //                       color: Color(0xffFFC120),
      //                     ),
      //                     Text(
      //                       ' 4.9  95 Reviews ',
      //                       style: GoogleFonts.dmSans(
      //                           fontWeight: FontWeight.w400,
      //                           fontSize: 10,
      //                           color: const Color(0xff000000)),
      //                     ),
      //                     Container(
      //                       width: 90,
      //                       height: 29,
      //                       decoration: BoxDecoration(
      //                           color: const Color(0xffB7A6FC),
      //                           borderRadius: BorderRadius.circular(70)),
      //                       child: Center(
      //                         child: Text(
      //                           'Track Order',
      //                           style: GoogleFonts.poppins(
      //                               fontWeight: FontWeight.w600,
      //                               fontSize: 12,
      //                               color: const Color(0xffffffff)),
      //                         ),
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
