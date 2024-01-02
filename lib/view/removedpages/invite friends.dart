// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Invitefriendsss extends StatefulWidget {
//   const Invitefriendsss({super.key});

//   @override
//   State<Invitefriendsss> createState() => _InvitefriendsssState();
// }

// class _InvitefriendsssState extends State<Invitefriendsss> {
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
//                     border: Border.all(color: Colors.black)),
//                 child: const Icon(
//                   Icons.arrow_back,
//                   size: 30,
//                 ),
//               ),
//             ),
//             Text(
//               'Invite Friends',
//               style: GoogleFonts.lexendDeca(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 27,
//                   color: const Color(0xffB7A6FC)),
//             ),
//             const SizedBox(
//               width: 40,
//               height: 40,
//             ),
//           ],
//         ),
//       ),
//       body: SafeArea(
//           child: ListView(
//         children: [

//           //================ text field ===============================================================================

//           Padding(
//             padding: const EdgeInsets.only(left: 41, right: 41, top: 20),
//             child: Container(
//               width: double.infinity,
//               height: 36,
//               decoration: BoxDecoration(
//                   color: Colors.purple[50],
//                   borderRadius: BorderRadius.circular(6)),
//               child: const TextField(
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Search here',
//                     prefixIcon: Icon(Icons.search),
//                     hintStyle: TextStyle(
//                         color: Color(0xff544C4C),
//                         fontWeight: FontWeight.w500,
//                         fontSize: 14)),
//               ),
//             ),
//           ),

// //============================= friends =============================================================================================

//           Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (2).png'),
//               title: Text(
//                 'Paathu',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '3365654848',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //----------------------------------------------------------------------------------------------------------------------------

//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (5).png'),
//               title: Text(
//                 'Stella',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '8765906357',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (3).png'),
//               title: Text(
//                 'Gwen',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '3479367523',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (4).png'),
//               title: Text(
//                 'Jorge',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '6592068206',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (6).png'),
//               title: Text(
//                 'Cristaphor',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '2763731850',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (7).png'),
//               title: Text(
//                 'Georgina',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '3365654848',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (8).png'),
//               title: Text(
//                 'Smith',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '3365654848',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (9).png'),
//               title: Text(
//                 'Peter',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '3365654848',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (10).png'),
//               title: Text(
//                 'Abhi',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '3365654848',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (11).png'),
//               title: Text(
//                 'Kamal',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '3365654848',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//           Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: ListTile(
//               leading: Image.asset('assets/Ellipse (12).png'),
//               title: Text(
//                 'Naseef',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: const Color(0xff011627)),
//               ),
//               subtitle: Text(
//                 '3365654848',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff3D4260)),
//               ),
//               trailing: Container(
//                 width: 69,
//                 height: 29,
//                 decoration: BoxDecoration(
//                     color: const Color(0xffB7A6FC),
//                     borderRadius: BorderRadius.circular(70)),
//                 child: Center(
//                   child: Text(
//                     'Invite',
//                     style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 12,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //-------------------------------------------------------------------------------------------------------------------------------


//         ],
//       )),
//     );
//   }
// }
