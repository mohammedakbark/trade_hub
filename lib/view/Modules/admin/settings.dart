import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/splash%20screen.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/settings/passwordmanager.dart';

class SEttingsShop extends StatelessWidget {
  const SEttingsShop({super.key});

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF6565),
        centerTitle: true,
        title: Text(
          'Settings',
          style: GoogleFonts.lexendDeca(
              fontWeight: FontWeight.w600, fontSize: 28, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          //==========================container=============================================================================
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Settings',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.52,
                  color: const Color(0xff5B5B5B)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 29, right: 29, top: 20, bottom: 50),
            child: Container(
              // height: hight * .18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(5, 5)),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Column(children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 25),
                  //   child: Row(
                  //     children: [
                  //       Image.asset('assets/bell.png'),
                  //       Padding(
                  //         padding: const EdgeInsets.only(left: 20),
                  //         child: Column(
                  //           children: [
                  //             Text(
                  //               'Notification settings',
                  //               style: GoogleFonts.inter(
                  //                   fontWeight: FontWeight.w400,
                  //                   fontSize: 15,
                  //                   color: const Color(0xff1D1E20)),
                  //             ),
                  //             Text(
                  //               'Manage Notification             ',
                  //               style: GoogleFonts.dmSans(
                  //                   fontWeight: FontWeight.w400,
                  //                   fontSize: 11,
                  //                   color: const Color(0xffABABAB)),
                  //             ),
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),

                  //---------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const Passwordmanagerrr();
                          },
                        ));
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.lock_open,
                            size: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Text(
                                  'Password Manager',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: const Color(0xff1D1E20)),
                                ),
                                Text(
                                  'Change password              ',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: const Color(0xffABABAB)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //---------------------------------------------------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Image.asset('assets/Wallet_duotone_line.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Text(
                                'Delete Account',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: const Color(0xff1D1E20)),
                              ),
                              Text(
                                'manage account       ',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: const Color(0xffABABAB)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Padding(
                          padding: const EdgeInsets.only(bottom: 100),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: width * .3,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  authInstence.signOut(context).then((value) =>
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Splashhh()),
                                          (route) => false));
                                },
                                child: const Text("Logout"),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 25),
                      child: Row(
                        children: [
                          const Icon(Icons.logout),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Text(
                                  'Log out                      ',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: const Color(0xff1D1E20)),
                                ),
                                Text(
                                  'Further secure your account',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: const Color(0xffABABAB)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //---------------------------------------------------------------------------------------------------------------
                ]),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
