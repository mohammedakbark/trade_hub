import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelledOrderUser extends StatefulWidget {
  const CancelledOrderUser({super.key});

  @override
  State<CancelledOrderUser> createState() => _CancelledOrderUserState();
}

class _CancelledOrderUserState extends State<CancelledOrderUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Container(
                  width: 83,
                  height: 83,
                  color: Colors.white,
                  child: Image.asset('assets/image 5 (1).png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TMA-2 HD wirless',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text(
                            '₹645     ',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xff878787)),
                          ),
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Color(0xffFFC120),
                          ),
                          Text(
                            ' 4.6  86 Reviews ',
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(0xff000000)),
                          ),
                          Container(
                            width: 69,
                            height: 29,
                            decoration: BoxDecoration(
                                color: const Color(0xffB7A6FC),
                                borderRadius: BorderRadius.circular(70)),
                            child: Center(
                              child: Text(
                                'Re-Order',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color(0xffffffff)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //======================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Image.asset('assets/Rectangle 18828 (1).png'),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NIKEY',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text(
                            '₹3,000  ',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xff878787)),
                          ),
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Color(0xffFFC120),
                          ),
                          Text(
                            ' 4.8  86 Reviews ',
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(0xff000000)),
                          ),
                          Container(
                            width: 69,
                            height: 29,
                            decoration: BoxDecoration(
                                color: const Color(0xffB7A6FC),
                                borderRadius: BorderRadius.circular(70)),
                            child: Center(
                              child: Text(
                                'Re-Order',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color(0xffffffff)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
