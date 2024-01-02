import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/view/Modules/admin/iphone%2032.dart';

class CompletedOrderUser extends StatefulWidget {
  const CompletedOrderUser({super.key});

  @override
  State<CompletedOrderUser> createState() => _CompletedOrderUserState();
}

class _CompletedOrderUserState extends State<CompletedOrderUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Iphone3222();
                  },
                ));
              },
              child: Row(
                children: [
                  Image.asset('assets/Rectangle 18828 (2).png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IPhone',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 19,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Text(
                              '₹1,45,000 ',
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
                              ' 4.9  896 Reviews ',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: const Color(0xff000000)),
                            ),
                            Container(
                              width: 90,
                              height: 29,
                              decoration: BoxDecoration(
                                  color: const Color(0xffB7A6FC),
                                  borderRadius: BorderRadius.circular(70)),
                              child: Center(
                                child: Text(
                                  'Leave review',
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
          ),

          //========================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Image.asset('assets/Rectangle 18828 (3).png'),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JBL Wirless headset ',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text(
                            '₹6,000 ',
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
                            ' 4.9  98 Reviews          ',
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(0xff000000)),
                          ),
                          Container(
                            width: 90,
                            height: 29,
                            decoration: BoxDecoration(
                                color: const Color(0xffB7A6FC),
                                borderRadius: BorderRadius.circular(70)),
                            child: Center(
                              child: Text(
                                'Leave review',
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
