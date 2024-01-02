// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:trade_hub/view/Modules/user/pages/moments/moment%20profile.dart';

// class Momentsss extends StatefulWidget {
//   const Momentsss({super.key});

//   @override
//   State<Momentsss> createState() => _MomentsssState();
// }

// class _MomentsssState extends State<Momentsss> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 40, top: 20),
//             child: Text(
//               'Moments',
//               style: GoogleFonts.lexendDeca(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 28,
//                   color: const Color(0xffB7A6FC)),
//             ),
//           ),

//           //=============================================================================================

//           Padding(
//             padding: const EdgeInsets.only(left: 20, top: 20),
//             child: InkWell(onTap:() {
//               Navigator.push(context, MaterialPageRoute(builder: (context) {
//                 return const Momentsppp();
//               },));
//             },
//               child: Row(
//                 children: [
//                   Image.asset('assets/Ellipse 12.png'),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'rahul',
//                           style: GoogleFonts.inter(
//                               fontWeight: FontWeight.w400,
//                               fontSize: 18,
//                               color: Colors.black),
//                         ),
//                         Text(
//                           'karnadaka',
//                           style: GoogleFonts.inter(
//                               fontWeight: FontWeight.w400,
//                               fontSize: 10,
//                               color: Colors.black),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
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
//             padding: const EdgeInsets.only(left: 20,top: 10),
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

//           Padding(
//             padding: const EdgeInsets.only(left: 20, top: 20),
//             child: Row(
//               children: [
//                 Image.asset('assets/Ellipse 13.png'),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'jinesh',
//                         style: GoogleFonts.inter(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 18,
//                             color: Colors.black),
//                       ),
//                       Text(
//                         'Kolkatta',
//                         style: GoogleFonts.inter(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 10,
//                             color: Colors.black),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),

//           //===================================================================================================================

//           Padding(
//             padding: const EdgeInsets.only(top: 10),
//             child: Image.asset(
//               'assets/Rectangle 4228.png',
//               height: 220,
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
//             padding: const EdgeInsets.only(left: 20,top: 10,bottom: 100),
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
