// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Momentsppp extends StatefulWidget {
//   const Momentsppp({super.key});

//   @override
//   State<Momentsppp> createState() => _MomentspppState();
// }

// class _MomentspppState extends State<Momentsppp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         surfaceTintColor: Colors.white,
//         foregroundColor: null,
//         shadowColor: null,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             InkWell(onTap: () {
//               Navigator.pop(context);
//             },

//               child: Container(
//                 width: 40,
//                 height: 40,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(90),
//                     border: Border.all(color: Colors.grey)),
//                 child: const Icon(
//                   Icons.arrow_back,
//                   size: 30,
//                 ),
//               ),
//             ),
//             Text(
//               'Rahul',
//               style: GoogleFonts.lexendDeca(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 23,
//                   color: Colors.black),
//             ),
//             const SizedBox(
//               width: 40,
//               height: 40,
//             ),
//           ],
//         ),
//       ),

//       //=================================================================================================================

//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: 90,
//                   height: 90,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: const Color(0xffFF6565), width: 3),
//                       borderRadius: BorderRadius.circular(90)),
//                   child: Image.asset('assets/Ellipse 12 (1).png'),
//                 ),
//                 Row(
//                   children: [
//                     Column(
//                       children: [
//                         Text(
//                           '1,234',
//                           style: GoogleFonts.actor(
//                               fontWeight: FontWeight.w400,
//                               fontSize: 14,
//                               color: Colors.black),
//                         ),
//                         Text(
//                           'Posts',
//                           style: GoogleFonts.lexendDeca(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 14,
//                               color: Colors.black),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15),
//                       child: Column(
//                         children: [
//                           Text(
//                             '5,678',
//                             style: GoogleFonts.actor(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 14,
//                                 color: Colors.black),
//                           ),
//                           Text(
//                             'Followers',
//                             style: GoogleFonts.lexendDeca(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14,
//                                 color: Colors.black),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15),
//                       child: Column(
//                         children: [
//                           Text(
//                             '9,101',
//                             style: GoogleFonts.actor(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 14,
//                                 color: Colors.black),
//                           ),
//                           Text(
//                             'Following',
//                             style: GoogleFonts.lexendDeca(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14,
//                                 color: Colors.black),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 10,
//                   height: 10,
//                 )
//               ],
//             ),
//           ),

//           //=================================================================================================================

//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Text(
//               'Username',
//               style: GoogleFonts.lexendDeca(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 13,
//                   color: Colors.black),
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Text(
//               'Category/Genre text',
//               style: GoogleFonts.lexendDeca(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 13,
//                   color: Colors.black),
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Text(
//               'Lorem ipsum dolor sit amet, consectetur adipiscing',
//               style: GoogleFonts.lexendDeca(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 13,
//                   color: Colors.black),
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Row(
//               children: [
//                 Text(
//                   'elit, sed do eiusmod tempor incididunt ',
//                   style: GoogleFonts.lexendDeca(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 13,
//                       color: Colors.black),
//                 ),
//                 Text(
//                   '#hashtag',
//                   style: GoogleFonts.lexendDeca(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 13,
//                       color: const Color(0xff004C8B)),
//                 ),
//               ],
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Text(
//               'Link goes here',
//               style: GoogleFonts.lexendDeca(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 13,
//                   color: const Color(0xff004C8B)),
//             ),
//           ),

// //============================================================================================================================

//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//               children: [
//                 Image.asset('assets/Avatars.png'),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 15),
//                   child: Text(
//                     'Followed by username, username\nand 100 others',
//                     style: GoogleFonts.lexendDeca(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 13,
//                         color: Colors.black),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 width: 300,
//                 height: 32,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(6),
//                     color: const Color(0xffFFAB2D)),
//                 child: Center(
//                   child: Text(
//                     'Follow',
//                     style: GoogleFonts.inter(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18,
//                         color: Colors.black),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 33,
//                 height: 30,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: const Color(0xff7A00E6)),
//                 child: const Icon(
//                   CupertinoIcons.chat_bubble_text,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//               )
//             ],
//           ),
          
//           //==================================================================================================================================
          
//           Row(mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset('assets/Group 8756 (1).png'),
//             ],
//           ),

//           //===================================================================================================================

//           Padding(
//             padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
//             child: Image.asset(
//               'assets/Rectangle 4227.png',
//             ),
//           ),

//           //===================================================================================================================

//           Padding(
//             padding: const EdgeInsets.only(left: 24,right: 24,top: 10),
//             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     const Icon(
//                       Icons.favorite_border,
//                       size: 30,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10, right: 10),
//                       child: Image.asset('assets/Vector (3).png'),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Image.asset('assets/Vector (4).png'),
//                     )
//                   ],
//                 ),
//                 const Icon(
//                   Icons.bookmark_border,
//                   size: 30,
//                 )
//               ],
//             ),
//           ),

//           //=============================================================================================================

//           Padding(
//             padding: const EdgeInsets.only(left: 20,top: 10,bottom: 40),
//             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       'Villa bartered to mr ',
//                       style: GoogleFonts.inter(
//                           fontWeight: FontWeight.w400,
//                           fontSize: 17,
//                           color: Colors.black),
//                     ), Text(
//                       '@john ',
//                       style: GoogleFonts.inter(
//                           fontWeight: FontWeight.w400,
//                           fontSize: 17,
//                           color: const Color(0xff00A3FF)),
//                     ), Text(
//                       'with flat',
//                       style: GoogleFonts.inter(
//                           fontWeight: FontWeight.w400,
//                           fontSize: 17,
//                           color: Colors.black),
//                     ),
//                   ],
//                 ),
//                 Text(
//                   '.\n.',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 17,
//                       color: Colors.black),
//                 ), Text(
//                   '...',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 17,
//                       color: const Color(0xffA5A5A5)),
//                 ),

//               ],
//             ),
//           ),

//           //ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc


//         ],
//       ),
//     );
//   }
// }
