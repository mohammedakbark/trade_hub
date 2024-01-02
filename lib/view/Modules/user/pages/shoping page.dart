import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoppingpageee extends StatefulWidget {
  const Shoppingpageee({super.key});

  @override
  State<Shoppingpageee> createState() => _ShoppingpageeeState();
}

class _ShoppingpageeeState extends State<Shoppingpageee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shop',
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                      color: const Color(0xffB7A6FC)),
                ),
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              width: 340,
              height: 36,
              decoration: BoxDecoration(
                  color: const Color(0x60B7A6FC),
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

          //====================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                Image.asset('assets/Rectangle 18818 (1).png'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/Group 3.png'),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Shops',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),

          //============================================================================================================

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset('assets/Group 12577.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('assets/Group 12578.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('assets/Group 12579.png'),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            width: 85,
                            height: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                border: Border.all(color: Colors.black12)),
                            child: const Icon(
                              Icons.apple_outlined,
                              size: 60,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Apple',
                              style: GoogleFonts.hanuman(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),

          //===========================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Discover',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),

          //===========================================================================================================================

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Rectangle 18823 (2).png'),
                  Text('NIKE',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.black,
                      )),
                  Text(
                      'Air Jordan 1 Retro\n'
                      'High OG Patent Bred',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.black,
                      )),
                  Row(
                    children: [
                      const Icon(
                        Icons.currency_rupee,
                        size: 15,
                      ),
                      Text('28,300',
                          style: GoogleFonts.quantico(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.black,
                          )),
                    ],
                  )
                ],
              ),

              //==============================================================================================================
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Group 12595.png'),
                  Text('APPLE',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.black,
                      )),
                  Text('Apple iPhone 14 1TB',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.black,
                      )),
                  Text('Free Delivery',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: const Color(0xff565656),
                      )),
                  Row(
                    children: [
                      const Icon(
                        Icons.currency_rupee,
                        size: 15,
                      ),
                      Text('1,45,000',
                          style: GoogleFonts.quantico(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.black,
                          )),
                    ],
                  )
                ],
              ),
            ],
          ),

          //==============================================================================================================================

          Padding(
            padding: const EdgeInsets.only(bottom: 100,top: 20,),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/Rectangle 18823 (1).png'),
                    Text('Apple',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Airpods Pro',
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.black,
                          )),
                    ),
                    Text('',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
                          color: const Color(0xff565656),
                        )),
                    Row(
                      children: [
                        const Icon(
                          Icons.currency_rupee,
                          size: 15,
                        ),
                        Text('21,499',
                            style: GoogleFonts.quantico(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: const Color(0xff565656),
                            )),
                      ],
                    )
                  ],
                ),

//======================================================================================================================

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/Rectangle 18823 (2).png'),
                    Text('NIKE',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black,
                        )),
                    Text(
                        'Air Jordan 1 Retro\n'
                            'High OG Patent Bred',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black,
                        )),
                    Row(
                      children: [
                        const Icon(
                          Icons.currency_rupee,
                          size: 15,
                        ),
                        Text('28,300',
                            style: GoogleFonts.quantico(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: Colors.black,
                            )),
                      ],
                    )
                  ],
                ),

                //==============================================================================================================

              ],
            ),
          ),

        ],
      ),
    );
  }
}
