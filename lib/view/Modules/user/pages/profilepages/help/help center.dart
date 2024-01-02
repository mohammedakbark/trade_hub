import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:trade_hub/view/Modules/user/pages/profilepages/help/TabViews/contact%20us.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/help/TabViews/faq.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            surfaceTintColor: Colors.white,
            foregroundColor: null,
            shadowColor: null,
            title: Row(
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
                  'Settings',
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 27,
                      color: const Color(0xffB7A6FC)),
                ),
                const SizedBox(
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
          body: SafeArea(
              child: Column(
            children: [
              //=========================================== tabbar ==========================================================

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'FAQ',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Contact Us',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                  labelColor: const Color(0xff7A00E6),
                  unselectedLabelColor: const Color(0xff707991),
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),

              const Expanded(
                  child: TabBarView(
                children: [FAQTabView(), ContactUsTabView()],
              ))
            ],
          )),
        ));
  }
}
