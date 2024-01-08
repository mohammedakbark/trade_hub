import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/buyselectedproduct.dart';
import 'package:trade_hub/view/Modules/user/navigation%20bar.dart';
import 'package:trade_hub/viewmodel/controller.dart';

class AfterPaymentPage extends StatefulWidget {
  String productImage;
  String productName;
  int price;
  String description;
  String currentUserName;
  String userAddress;
  AfterPaymentPage(
      {super.key,
      required this.currentUserName,
      required this.description,
      required this.price,
      required this.productImage,
      required this.productName,
      required this.userAddress});

  @override
  State<AfterPaymentPage> createState() => _AfterPaymentPageState();
}

final date = DateTime.now();
String currentDate = "${date.month}/ ${date.day}";
String estimateDate = "${date.month} /${date.day + 3}/ ${date.year}";

class _AfterPaymentPageState extends State<AfterPaymentPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
              width: width,
              height: hight * .23,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            widget.productImage,
                            fit: BoxFit.fill,
                            height: hight * .2,
                            width: width * .4,
                          ),
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.productName.toUpperCase(),
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  color: Colors.black),
                            ),
                            Text(
                              widget.description.toLowerCase(),
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 43, 43, 43)),
                            ),
                            Text(
                              "₹ ${widget.price}",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(0xff393939)),
                            ),
                            const SizedBox(
                              child: Text(''),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 10),
                  //   child: Container(
                  //     height: 0.3,
                  //     color: Colors.black26,
                  //   ),
                  // ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.only(left: 30, right: 30, top: 10),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       // Text(
                  //       //   'View Details',
                  //       //   style: GoogleFonts.quicksand(
                  //       //       fontWeight: FontWeight.w700,
                  //       //       fontSize: 12,
                  //       //       color: Colors.black),
                  //       // ),
                  //       // const Icon(
                  //       //   Icons.arrow_forward_ios,
                  //       //   size: 15,
                  //       //   color: Color(0xff3763FF),
                  //       // )
                  //     ],
                  //   ),
                  // )/
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
                      widget.userAddress,
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
                            ' Delivery $currentDate - $estimateDate',
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
                      '₹ ${widget.price}',
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
            child: InkWell(
              onTap: () {
                controller.clearData();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Navigationnn()),
                    (route) => false);
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
