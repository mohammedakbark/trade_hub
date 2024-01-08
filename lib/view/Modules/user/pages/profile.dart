import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/splash%20screen.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/edit%20profile.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/help/help%20center.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/myorder/my%20order%20w.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/privacy%20policy.dart';
import 'package:trade_hub/view/Modules/user/pages/profilepages/settingsmain_page.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class Profileee extends StatefulWidget {
  const Profileee({super.key});

  @override
  State<Profileee> createState() => _ProfileeeState();
}

class _ProfileeeState extends State<Profileee> {
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Consumer<Firestore>(builder: (context, firestore, child) {
        return ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile',
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 27,
                      color: const Color(0xffB7A6FC)),
                ),
              ],
            ),
            Center(
              child: firestore.userModel?.profileImage == "" ||
                      firestore.userModel?.profileImage == null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox(
                          height: 110,
                          width: 110,
                          child: Image.asset(
                            'assets/noImage.png',
                            fit: BoxFit.fill,
                          )),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox(
                        height: 110,
                        width: 110,
                        child: Image.network(
                          "${firestore.userModel?.profileImage}",
                          fit: BoxFit.fill,
                          // scale: 30,
                        ),
                      ),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${firestore.userModel?.name}",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: const Color(0xff000000)),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${firestore.userModel?.email}",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: const Color(0xffFFAB2D)),
                ),
              ],
            ),

            //=====================================================================================================================

            Padding(
              padding: const EdgeInsets.only(left: 29, right: 29, top: 40),
              child: Container(
                height: hight * .24,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(5, 5)),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 37),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Editprofileee();
                            },
                          ));
                        },
                        child: Row(
                          children: [
                            Image.asset('assets/User.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    'Profile   ',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: const Color(0xff1D1E20)),
                                  ),
                                  Text(
                                    'Edit profile',
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

                      //---------------------------------------------------------------------------------------------------------------
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const MyorderUserPage();
                              },
                            ));
                          },
                          child: Row(
                            children: [
                              Image.asset('assets/Bag.png'),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      'My orders      ',
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: const Color(0xff1D1E20)),
                                    ),
                                    Text(
                                      'Check your orders',
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

                      // Padding(
                      //   padding: const EdgeInsets.only(top: 25),
                      //   child: InkWell(
                      //     onTap: () {
                      //       Navigator.push(context, MaterialPageRoute(
                      //         builder: (context) {
                      //           return const Invitefriendsss();
                      //         },
                      //       ));
                      //     },
                      //     child: Row(
                      //       children: [
                      //         const Icon(Icons.group_add_outlined),
                      //         Padding(
                      //           padding: const EdgeInsets.only(left: 20),
                      //           child: Column(
                      //             children: [
                      //               Text(
                      //                 'Invites Friends  ',
                      //                 style: GoogleFonts.inter(
                      //                     fontWeight: FontWeight.w400,
                      //                     fontSize: 15,
                      //                     color: const Color(0xff1D1E20)),
                      //               ),
                      //               Text(
                      //                 'Let your friends know',
                      //                 style: GoogleFonts.dmSans(
                      //                     fontWeight: FontWeight.w400,
                      //                     fontSize: 11,
                      //                     color: const Color(0xffABABAB)),
                      //               ),
                      //             ],
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      //---------------------------------------------------------------------------------------------------------------

                      // Padding(
                      //   padding: const EdgeInsets.only(top: 25),
                      //   child: Row(
                      //     children: [
                      //       const Icon(Icons.favorite_border,
                      //           color: Color(0xff1D1E20)),
                      //       Padding(
                      //         padding: const EdgeInsets.only(left: 20),
                      //         child: Column(
                      //           children: [
                      //             Text(
                      //               'Wishlist   ',
                      //               style: GoogleFonts.inter(
                      //                   fontWeight: FontWeight.w400,
                      //                   fontSize: 15,
                      //                   color: const Color(0xff1D1E20)),
                      //             ),
                      //             Text(
                      //               'Saved            ',
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
                                return const SettingsPage();
                              },
                            ));
                          },
                          child: Row(
                            children: [
                              Image.asset('assets/Setting_line.png'),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      'Settings            ',
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: const Color(0xff1D1E20)),
                                    ),
                                    Text(
                                      'Manage your account',
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
                    ],
                  ),
                ),
              ),
            ),

            //========================= more ============================================================================

            Padding(
              padding: const EdgeInsets.only(left: 17, top: 15),
              child: Text(
                'More',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xff1D1E20)),
              ),
            ),

            //==========================container=============================================================================

            Padding(
              padding: const EdgeInsets.only(
                  left: 29, right: 29, top: 20, bottom: 100),
              child: Container(
                height: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(5, 5)),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Privacypolicyyy();
                            },
                          ));
                        },
                        child: Row(
                          children: [
                            const Icon(Icons.lock_outline),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    'Privacy Policy',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: const Color(0xff1D1E20)),
                                  ),
                                  Text(
                                    'Privacy policy        ',
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const HelpCenterPage();
                            },
                          ));
                        },
                        child: Row(
                          children: [
                            const Icon(Icons.info_outline),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    'Help and support',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: const Color(0xff1D1E20)),
                                  ),
                                  Text(
                                    'seek help                       ',
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
                                    authInstence.signOut(context).then(
                                        (value) => Navigator.pushAndRemoveUntil(
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
                        padding: const EdgeInsets.only(top: 25),
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
            )
          ],
        );
      })),
    );
  }
}
