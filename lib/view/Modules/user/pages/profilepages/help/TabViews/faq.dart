import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQTabView extends StatefulWidget {
  const FAQTabView({super.key});

  @override
  State<FAQTabView> createState() => _FAQTabViewState();
}

class _FAQTabViewState extends State<FAQTabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 41, right: 41, top: 20),
            child: Container(
              width: double.infinity,
              height: 38,
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(6)),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search here',
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                        color: Color(0xff544C4C),
                        fontWeight: FontWeight.w500,
                        fontSize: 14)),
              ),
            ),
          ),

          //======================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Can I track my order’s delivery status?',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xff1D1E20)),
                ),
                const Icon(
                  Icons.keyboard_arrow_up_outlined,
                  size: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 70),
            child: Text(
              "Yes you can Track your orders from my orders section",
              style: GoogleFonts.radioCanada(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.26,
                  color: const Color(0xff585858)),
            ),
          ),

          //======================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Is there is a return policy?',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xff1D1E20)),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                )
              ],
            ),
          ),

          //======================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Can I save my favorite items for later?',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xff1D1E20)),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                )
              ],
            ),
          ),
          //======================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Can I share product with my friends?',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xff1D1E20)),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                )
              ],
            ),
          ),
          //======================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How do I contact customer support?',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xff1D1E20)),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                )
              ],
            ),
          ),
          //======================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'What payment methods are accepted?',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xff1D1E20)),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                )
              ],
            ),
          ),

          //======================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 147,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xff7A00E6),
                    borderRadius: BorderRadius.circular(36)),
                child: Center(
                  child: Text(
                    'Send Message',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xffffffff)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
