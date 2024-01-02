import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shopsigninnn extends StatefulWidget {
  const Shopsigninnn({super.key});

  @override
  State<Shopsigninnn> createState() => _ShopsigninnnState();
}

class _ShopsigninnnState extends State<Shopsigninnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),

      body: ListView(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Shop Details',
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w600, fontSize: 28, color: Colors.black),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 13, right: 13,top: 20),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 107,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Image.asset('assets/Img_box.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Image.asset('assets/Camera.png')],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 20),
                    child: Image.asset('assets/Group 12655.png'),
                  )
                ],
              )),

          //=================================================================Shope info=========================================================

          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              'Shope Info',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.52,
                  color: const Color(0xff5B5B5B)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
            child: Container(
              width: double.infinity,
              height: 581,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(5, 5)),
                  ]),

              //-----------------------------------------------------------shope name--------------------------------------------------------------------------------------

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Shope Name',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      My shope',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //-----------------------------------email-------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Email',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      Villiealex@gmail.com',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //-----------------------------------biography-------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Biography',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 116,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      Write a short biography',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //-----------------------------------country-------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Country/region',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      India',
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //-----------------------------------number-------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Phone Number',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      6255487125',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //-----------------------------------save-------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            width: 84,
                            height: 34,
                            decoration: BoxDecoration(
                                color: const Color(0xff7047EB),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Save',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //======================================shop address===================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 23, top: 20),
            child: Text(
              'Shope Address',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.52,
                  color: const Color(0xff5B5B5B)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
            child: Container(
              width: double.infinity,
              height: 943,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(5, 5)),
                  ]),

              //-------------------------------------------------------------------------------------------------------------------------------------------------

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Legal Bussiness Name',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      My shope',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Address Line 1',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      xxxxxxxxx',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Address Line 2',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      xxxxxxxxx',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'City',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      xxxxx',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Post Code/Zip',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      6255',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //-----------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Country',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      India',
                            suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //-----------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'State',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      Kerala',
                            suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //-----------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Locate On Map',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      Kerala,malappuram,peinthalmanna',
                            suffixIcon: Icon(Icons.my_location),
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/image 5.png'),
                  ),

                  //-----------------------------------save-------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            width: 84,
                            height: 34,
                            decoration: BoxDecoration(
                                color: const Color(0xff7047EB),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Save',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //======================================shop address===================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 23, top: 20),
            child: Text(
              'Shope Address',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.52,
                  color: const Color(0xff5B5B5B)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
            child: Container(
              width: double.infinity,
              height: 581,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(5, 5)),
                  ]),

              //-------------------------------------------------------------------------------------------------------------------------------------------------

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Product Per Page',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      25',
                            suffixIcon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 30,
                            ),
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Store Visibility',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      Public',
                            suffixIcon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 30,
                            ),
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Terms & conditions',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 116,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      Write Here',
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Store Categories',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: const Color(0xff1D1E20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 35, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff544C4C99)),
                          borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '      Electronics',
                            suffixIcon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 30,
                            ),
                            hintStyle: TextStyle(
                                color: Color(0xff544C4C),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ),
                    ),
                  ),

                  //----------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 79,
                            height: 31,
                            decoration: BoxDecoration(
                                color: const Color(0xff7A00E6),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Fashion',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        Container(
                            width: 120,
                            height: 31,
                            decoration: BoxDecoration(
                                color: const Color(0xff7A00E6),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Cosmetics',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        Container(
                            width: 74,
                            height: 31,
                            decoration: BoxDecoration(
                                color: const Color(0xff7A00E6),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Beauty',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //======================================Linked address===================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 23, top: 20),
            child: Text(
              'Shope Address',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.52,
                  color: const Color(0xff5B5B5B)),
            ),
          ),

          //---------------------------------------------------------------------------------------------------

          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 5),
            child: Container(
              height: 581,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(5, 5)),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 70, top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/globe.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Website',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '+',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 25, right: 70, top: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/WhatsApp.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Whatsapp',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '+',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 25, right: 70, top: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Facebook (2).png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Facebook',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '+',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 25, right: 70, top: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Twitter.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Twitter',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '+',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 25, right: 70, top: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Instagram.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Instagram',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '+',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 25, right: 70, top: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Headphones_fill.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Customer Service',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '+',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  //------------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            width: 84,
                            height: 34,
                            decoration: BoxDecoration(
                                color: const Color(0xff7047EB),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Save',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),

          //======================submit===============================================================================
          
          Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 50),
            child: Image.asset('assets/Group 12680.png'),
          )
        ],
      ),
    );
  }
}
