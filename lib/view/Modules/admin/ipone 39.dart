import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/view/Modules/admin/iphone%2032.dart';


class Iphone3999 extends StatefulWidget {
  const Iphone3999({super.key});

  @override
  State<Iphone3999> createState() => _Iphone3999State();
}

class _Iphone3999State extends State<Iphone3999> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Icon(
              Icons.check_circle_outline_rounded,
              size: 80,
              color: Color(0xff4950FF),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Thank You!',
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      color: Colors.black),
                ),
              ],
            ),
          ),

          //======================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 390,
              height: 198,
              decoration: ShapeDecoration(
                color: const Color(0xFFB7A6FC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Rectangle 18828 (7).png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'IPhone',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.black),
                            ),
                            Text(
                              'Apple IPhone 14 1TB',
                              style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                            Text(
                              '₹1,45,000 ',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(0xff393939)),
                            ),
                            const SizedBox(
                              child: Text(''),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Color    ',
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Black              ',
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Storage    ',
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Colors.black),
                                ),
                                Text(
                                  '256 GB',
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 0.3,
                      color: Colors.black26,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'View Details',
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xff3763FF),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //==============================================================================================================================

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 192,
              decoration: ShapeDecoration(
                color: const Color(0xFFB7A6FC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deliver to',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    Text(
                      'Anappuram, Kadavathara-682020 ',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                          Text(
                            ' Delivery by Thu ,Jan 5 - Jan 7,2022',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7, top: 20),
                      child: Row(
                        children: [
                          Image.asset('assets/fi-br-refresh.png'),
                          Text(
                            '  Return policy not available',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          //=========================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Container(
              height: 52,
              decoration: ShapeDecoration(
                color: const Color(0xFFB7A6FC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payable Amount',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color(0xff393939)),
                    ),
                    Text(
                      '₹1,45,000',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color(0xff393939)),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF4950FF),
              ),
              child: Center(
                child: Text(
                  'Track Order',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return const Iphone3222();
              },));
            },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xff4950FF))),
                child: Center(
                  child: Text(
                    'Continue shopping',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: const Color(0xff4950FF)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
