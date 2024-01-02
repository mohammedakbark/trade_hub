import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Allensolly111 extends StatefulWidget {
  const Allensolly111({super.key});

  @override
  State<Allensolly111> createState() => _Allensolly111State();
}

class _Allensolly111State extends State<Allensolly111> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      body: ListView(
        children: [

              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Allen Solly',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300, top: 20),
                    child: Column(
                      children: [
                        Image.asset('assets/View_alt.png'),
                        Text(
                          'view Shop',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: const Color(0xff1D1E20)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

          Padding(
            padding: const EdgeInsets.only(top: 0, left: 13, right: 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset('assets/Group 12653.png',width: 370,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 60),
                      child: Image.asset('assets/Group 12655 (2).png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 37, top: 75),
                      child: Image.asset('assets/Vector (1).png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Image.asset('assets/Rectangle 18818.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('assets/Group 3.png'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 147,
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: const Color(0xff7A00E6),
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.black,
                            blurRadius: 3,
                            offset: Offset(5, 5)),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add Categories ',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      Image.asset('assets/+.png')
                    ],
                  ),
                ),
              ],
            ),
          ),

          //====================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20,top: 30),
            child: Text(
              'Category name',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: const Color(0xff5B5B5B)),
            ),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Group 12688.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product Name',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product detail',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/Rupee (INR).png'),
                        Text(
                          'xx,xxx',
                          style: GoogleFonts.quantico(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //-------------------------------------------------------------------------------------------------------------------------------

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Group 12688.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product Name',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product detail',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/Rupee (INR).png'),
                        Text(
                          'xx,xxx',
                          style: GoogleFonts.quantico(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          //==================================================================================================================================

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Group 12688.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product Name',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product detail',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/Rupee (INR).png'),
                        Text(
                          'xx,xxx',
                          style: GoogleFonts.quantico(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //-------------------------------------------------------------------------------------------------------------------------------

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Group 12688.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product Name',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product detail',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/Rupee (INR).png'),
                        Text(
                          'xx,xxx',
                          style: GoogleFonts.quantico(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          //==================================================================================================================================


          Padding(
            padding: const EdgeInsets.only(left: 20,top: 30),
            child: Text(
              'Category name',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: const Color(0xff5B5B5B)),
            ),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Group 12688.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product Name',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product detail',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/Rupee (INR).png'),
                        Text(
                          'xx,xxx',
                          style: GoogleFonts.quantico(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //-------------------------------------------------------------------------------------------------------------------------------

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Group 12688.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product Name',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Product detail',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/Rupee (INR).png'),
                        Text(
                          'xx,xxx',
                          style: GoogleFonts.quantico(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          //==================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/Group 12688.png'),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Product Name',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Product detail',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Image.asset('assets/Rupee (INR).png'),
                          Text(
                            'xx,xxx',
                            style: GoogleFonts.quantico(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //-------------------------------------------------------------------------------------------------------------------------------

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/Group 12688.png'),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Product Name',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Product detail',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Image.asset('assets/Rupee (INR).png'),
                          Text(
                            'xx,xxx',
                            style: GoogleFonts.quantico(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //==================================================================================================================================

        ],
      ),
    );
  }
}
