import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/myorder/myorderTabs/active%20w.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/myorder/myorderTabs/cancelled%20w.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/myorder/myorderTabs/completed%20w.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class MyorderUserPage extends StatefulWidget {
  const MyorderUserPage({super.key});

  @override
  State<MyorderUserPage> createState() => _MyorderUserPageState();
}

class _MyorderUserPageState extends State<MyorderUserPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            body: Consumer<Firestore>(builder: (context, firestore, child) {
          return FutureBuilder(
              future: firestore
                  .fetchOrdersforUser(FirebaseAuth.instance.currentUser!.uid),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return SafeArea(
                    child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  border: Border.all(color: Colors.black)),
                              child: const Icon(
                                Icons.arrow_back,
                                size: 30,
                              ),
                            ),
                          ),
                          Text(
                            'My Orders',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.w400,
                                fontSize: 23,
                                color: const Color(0xffB7A6FC)),
                          ),
                          const SizedBox(
                            width: 40,
                            height: 40,
                          )
                        ],
                      ),
                    ),

                    //=========================================== tabbar ==========================================================

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              'Active',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Completed',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Cancelled',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                        labelColor: const Color(0xff7A00E6),
                        unselectedLabelColor: const Color(0xff707991),
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),

                    Expanded(
                        child: TabBarView(
                      children: [
                        ActiveOrderUser(
                          orderList: firestore.activeOrderList,
                        ),
                        CompletedOrderUser(
                          completedOrderList: firestore.completdOrderList,
                        ),
                        CancelledOrderUser(canceledOrderList:firestore.canceledOrderLists,)
                      ],
                    ))
                  ],
                ));
              });
        })));
  }
}
