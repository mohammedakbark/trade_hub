import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/view/Modules/admin/ipone%2039.dart';

class Iphone3444 extends StatefulWidget {
  const Iphone3444({super.key});

  @override
  State<Iphone3444> createState() => _Iphone3444State();
}

class _Iphone3444State extends State<Iphone3444> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 110,
              width: double.infinity,
              color: const Color(0xCCB7A6FC),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                    Text(
                      'My Cart',
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400,
                          fontSize: 23,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 40,
                    )
                  ],
                ),
              ),
            ),

            //==================================================================================================

            Padding(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 20),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                    color: const Color(0x4CB7A6FC),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 12, bottom: 10),
                      child: Text(
                        'Deliver to :',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 12),
                      child: Text(
                        'John',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 12),
                      child: Text(
                        'Ramaghiri (Rd),  Anappuram,\nkadavathara 682020',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color(0xff575757)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //=====================================================================================================

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 19, right: 19),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(0.00, 1.00),
                    end: const Alignment(0, -2.7),
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white,
                      Colors.white
                    ],
                  ),
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
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/Rectangle 18828 (4).png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              children: [
                                Text(
                                  'IPhone    ',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                      color: Colors.black),
                                ),
                                Text(
                                  '₹1,45,000 ',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Image.asset('assets/Group 12702.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //================================================================================================

            Padding(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 19,bottom: 30),
              child: Container(
                width: double.infinity,
                height: 297,
                decoration: BoxDecoration(
                    color: const Color(0x4CB7A6FC),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price Details (1 items)',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'Total Price',
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: const Color(0xff575757)),
                                ),
                              ),

                              //------------------------------------------------------------------------------------------------------

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Discount',
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: const Color(0xff575757)),
                                ),
                              ),

                              //------------------------------------------------------------------------------------------------------

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Delivery Fee',
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: const Color(0xff575757)),
                                ),
                              ),

                              //------------------------------------------------------------------------------------------------------
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  '1,45,000',
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: const Color(0xff575757)),
                                ),
                              ),

                              //------------------------------------------------------------------------------------------------------

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  '₹00',
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: const Color(0xff575757)),
                                ),
                              ),

                              //------------------------------------------------------------------------------------------------------

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  '₹00',
                                  style: GoogleFonts.lexendDeca(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: const Color(0xff575757)),
                                ),
                              ),

                              //------------------------------------------------------------------------------------------------------
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 95, bottom: 10),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Amount',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: const Color(0xff575757)),
                          ),
                          Text(
                            '₹1,45,000',
                            style: GoogleFonts.lexendDeca(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: const Color(0xff575757)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //===================================================================================================================

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Amount',
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xff807F7F)),
              ),
              Text(
                '₹1,45,000',
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),
          InkWell(onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return const Iphone3999();
            },));
          },
            child: Container(
              width: 246,
              height: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFB7A6FC)),
              child:  Center(
                child: Text(
                  'Continue',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),),
    );
  }
}
