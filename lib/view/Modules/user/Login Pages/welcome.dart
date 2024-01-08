import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/view/Modules/admin/loginPageShop.dart';
import 'package:trade_hub/view/Modules/admin/shop%20sign%20in.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/log%20in.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/sign%20in.dart';

class Welcomeee extends StatefulWidget {
  const Welcomeee({super.key});

  @override
  State<Welcomeee> createState() => _WelcomeeeState();
}

class _WelcomeeeState extends State<Welcomeee> {
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFFFE2E8),
        // body: Column(
        //   children: [
        //     Container(
        //       color: Colors.red,
        //       height: hight * .8,
        //       width: width,
        //       child: SizedBox(
        //         height: hight * .7,
        //         width: width,
        //         child: Image.asset(
        //           'assets/8101842 1.png',
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //     ),

        body: SizedBox(
          height: hight,
          width: width,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                      height: hight * .7,
                      width: width,
                      child: Image.asset(
                        'assets/8101842 1.png',
                        height: hight * .7,
                        width: width,
                        fit: BoxFit.fill,
                      )),
                  Expanded(
                      child: Container(
                    color: const Color(0xFFFFE2E8),
                  ))
                ],
              ),
              // Container(
              //   height: 165,
              //   width: double.infinity,
              //   color: const Color(0xFFFFE2E8),
              // ),
              Positioned(
                top: hight * .56,
                left: 0,
                right: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Loginnn()));

                        //************************barter signup */
                      },
                      child: Container(
                        width: width * .3,
                        height: hight * .2,
                        decoration: ShapeDecoration(
                          color: const Color(0xCEF66C62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icon _users_.png'),
                            SizedBox(
                              height: hight * .01,
                            ),
                            Text(
                              'Barter',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //==================================================================================================================================

                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => Center(
                                  child: Container(
                                    margin: EdgeInsets.all(30),
                                    padding: EdgeInsets.only(top: 100),
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFF6565),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    height: hight / 2,
                                    width: width,
                                    child: Column(
                                      // mainAxisAlignment:
                                      // MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/icon _cart_.png'),
                                        SizedBox(
                                          height: hight * .01,
                                        ),

                                        // Text(
                                        //   'Shop',
                                        //   style: GoogleFonts.inter(
                                        //       fontWeight: FontWeight.w700,
                                        //       fontSize: 43,
                                        //       color: Colors.black),
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 20, top: 50),
                                          child: SizedBox(
                                            width: width * .5,
                                            height: 60,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.black),
                                              onPressed: () {
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                             LoginPageShop()));
                                              },
                                              child: Text(
                                                'Log in',
                                                style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 19,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * .5,
                                          height: 60,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.black),
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Shopsigninnn()));
                                            },
                                            child: Text(
                                              'Sign up',
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 19,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ));

                        //********************************Shop sign up */
                      },
                      child: Container(
                        width: width * .3,
                        height: hight * .2,
                        decoration: ShapeDecoration(
                          color: const Color(0xCEFFD465),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icon _cart_.png'),
                            SizedBox(
                              height: hight * .01,
                            ),
                            Text(
                              'Shop',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Positioned(
              //   top: hight * .86,
              //   left: 0,
              //   right: 0,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       InkWell(
              //         onTap: () {
              //           Navigator.pushReplacement(context, MaterialPageRoute(
              //             builder: (context) {
              //               return const Loginnn();
              //             },
              //           ));
              //         },
              //         child: Container(
              //           width: 113,
              //           height: 50,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(10),
              //               color: const Color(0xff060330)),
              //           child: Center(
              //             child: Text(
              //               'Log in',
              //               style: GoogleFonts.inter(
              //                   fontWeight: FontWeight.w400,
              //                   fontSize: 19,
              //                   color: Colors.white),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Container(
              //         width: 94.5,
              //         height: 50,
              //         decoration: BoxDecoration(
              //             border: Border.all(color: const Color(0xff060330)),
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Center(
              //           child: Text(
              //             'Skip',
              //             style: GoogleFonts.inter(
              //                 fontWeight: FontWeight.w400,
              //                 fontSize: 19,
              //                 color: Colors.black),
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ));
  }
}
