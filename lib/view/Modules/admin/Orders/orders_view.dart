import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/view/Modules/admin/Orders/orderyabs/active.dart';
import 'package:trade_hub/view/removedpages/cancelled.dart';
import 'package:trade_hub/view/Modules/admin/Orders/orderyabs/completed.dart';

class MyorderAdmin extends StatefulWidget {
  const MyorderAdmin({super.key});

  @override
  State<MyorderAdmin> createState() => _MyorderAdminState();
}

class _MyorderAdminState extends State<MyorderAdmin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: const Color(0xffFF6565),
            body: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      Text(
                        'My Orders',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 23,
                            color: Colors.black),
                      ),
                      const CircleAvatar(
                        backgroundColor: Color(0xffFF6565),
                      ),
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
                          'Shipped',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                    labelColor: Colors.white,
                    unselectedLabelColor: const Color(0xff000000),
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),

                const Expanded(
                    child: TabBarView(
                  children: [
                    ActiveOrderAdmin(),
                    ShippedOrderForAdmin(),
                  ],
                ))
              ],
            ))));
  }
}
