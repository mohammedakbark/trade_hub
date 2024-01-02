import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Allensolly222 extends StatefulWidget {
  const Allensolly222({super.key});

  @override
  State<Allensolly222> createState() => _Allensolly222State();
}

class _Allensolly222State extends State<Allensolly222> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      body: ListView(
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
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/Rectangle 18823.png'),
                      Image.asset('assets/+ (1).png')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset('assets/Group 3.png'),
                  )
                ],
              )),

          //================================================================================================================

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 13),
            child: Row(
              children: [
                Container(
                  width: 175,
                  height: 22,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Text(
                        '  Add Producy Name',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      const Icon(
                        Icons.add,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          //================================================================================================================

          Padding(
            padding: const EdgeInsets.only(top: 10, left: 13),
            child: Row(
              children: [
                Container(
                  width: 114,
                  height: 18,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Text(
                        '  Product desciption',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.black),
                      ),
                      const Icon(
                        Icons.add,
                        size: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 10),
            child: Text(
              'delivery status show here',
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                  color: const Color(0xff565656)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13, top: 5),
            child: Row(
              children: [
                Image.asset('assets/Rupee (INR).png'),
                Container(
                  width: 78,
                  height: 20,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Text(
                        '  x,xx,xxx',
                        style: GoogleFonts.quantico(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.black),
                      ),
                      const Icon(
                        Icons.add,
                        size: 13,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          //=======================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 13, top: 10),
            child: Text(
              'Select Variant',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.black),
            ),
          ),

          //=======================================================================================================

          Container(
            height: 1,
            color: Colors.black,
          ),
          Container(
            height: 45,
            color: Colors.pink[300],
            child: Padding(
              padding: const EdgeInsets.only(left: 41, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Title :',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        '   add details here',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 20,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xff3763FF),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),
          Container(
            height: 45,
            color: Colors.pink[300],
            child: Padding(
              padding: const EdgeInsets.only(left: 41, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Title :',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        '   add details here',
                        style: GoogleFonts.lexendDeca(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 20,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xff3763FF),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),

          //============================================================================================================================

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 1,
              color: Colors.black,
            ),
          ),
          Container(
              height: 45,
              color: Colors.pink[300],
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Free Delivery',
                              style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: const Color(0xff00BE63)),
                            ),
                            Image.asset('assets/Group 12636.png')
                          ],
                        ),
                        Text(
                          'Text info To customer',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ],
                    ),
                    Container(
                      width: 74.52,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Change',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Container(
            height: 1,
            color: Colors.black,
          ),

          //=========================================================================================================

          Padding(
            padding: const EdgeInsets.only(top: 30, left: 18),
            child: Row(
              children: [
                Container(
                  width: 84,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          '   In Stock',
                          style: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color(0xff00BE63)),
                        ),
                        const Icon(Icons.keyboard_arrow_up,
                            size: 20, color: Color(0xffB7B7B7))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 18),
            child: Row(
              children: [
                Container(
                  width: 84,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.pinkAccent[100],
                      border: Border.all(color: Colors.black)),
                  child: Center(
                    child: Text(
                      'Out of Stock',
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: const Color(0xffFF0000)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //======================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30,bottom: 10),
            child: Text(
              'Add Highlights',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color(0xff000000)),
            ),
          ),

          //======================================================================================================

          Container(
            height: 2,
            color: Colors.black,
          ),
          Container(
            height: 380,
            color: Colors.pink[300],
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            color: Colors.black,
          ),

          //==========================================================================================================


          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30,bottom: 10),
            child: Text(
              'Add Highlights',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color(0xff000000)),
            ),
          ),

          //======================================================================================================

          Container(
            height: 2,
            color: Colors.black,
          ),
          Container(
            height: 380,
            color: Colors.pink[300],
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/Img_load_box_fill.png'),
                  title: Text(
                    'Head',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff000000)),
                  ),
                  subtitle: Text(
                    'Text',
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff000000)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Container(
              height: 2,
              color: Colors.black,
            ),
          ),

          //==========================================================================================================


        ],
      ),
    );
  }
}
