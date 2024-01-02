// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:trade_hub/view/Modules/user/pages/chats/chat%20page.dart';

// class AllChatPage extends StatefulWidget {
//   const AllChatPage({super.key});

//   @override
//   State<AllChatPage> createState() => _AllChatPageState();
// }

// class _AllChatPageState extends State<AllChatPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Chat',
//           style: GoogleFonts.lexendDeca(
//               fontWeight: FontWeight.w400,
//               fontSize: 28,
//               color: const Color(0xffB7A6FC)),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
//             child: Container(
//               width: 340,
//               height: 36,
//               decoration: BoxDecoration(
//                   color: const Color(0x60B7A6FC),
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

//           //====================================================================================================================

//           ListTile(
//             leading: Image.asset('assets/Avatar.png'),
//             title: Text(
//               'Jessica Drew',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             subtitle: Text(
//               'Ok, see you later',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: const Color(0xff707991)),
//             ),
//             trailing: Column(
//               children: [
//                 Text(
//                   '18:30',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: const Color(0xff707991)),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(top: 6),
//                   child: CircleAvatar(
//                     backgroundColor: Color(0xff78E378),
//                     radius: 8,
//                     child: Text('2',
//                         style: TextStyle(color: Colors.white, fontSize: 11)),
//                   ),
//                 )
//               ],
//             ),
//           ),

//           //===================================================================================================================
//           InkWell(
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (context) {
//                   return const Chatpage();
//                 },
//               ));
//             },
//             child: Container(
//               width: 72,
//               color: const Color(0xffF5F5F5),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
//                 child: Row(
//                   children: [
//                     Image.asset('assets/Avatar (1).png'),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'David Moore',
//                             style: GoogleFonts.inter(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 16,
//                                 color: Colors.black),
//                           ),
//                           Text(
//                             'Of course, what can i help you with??',
//                             style: GoogleFonts.inter(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 14,
//                                 color: const Color(0xff707991)),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           //===================================================================================================================

//           ListTile(
//             leading: Image.asset('assets/Avatar (2).png'),
//             title: Text(
//               'Greg James',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             subtitle: Text(
//               'I got a job at SpaceX 🎉 🚀  ',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: const Color(0xff707991)),
//             ),
//             trailing: Column(
//               children: [
//                 Text(
//                   '18:02',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: const Color(0xff707991)),
//                 ),
//                 const Padding(
//                     padding: EdgeInsets.only(top: 6),
//                     child: SizedBox(
//                       width: 10,
//                       height: 10,
//                     ))
//               ],
//             ),
//           ),

//           //===================================================================================================================

//           ListTile(
//             leading: Image.asset('assets/Avatar (3).png'),
//             title: Text(
//               'Emily Dorson',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             subtitle: Text(
//               'Table for four, 5PM. Be there.  ',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: const Color(0xff707991)),
//             ),
//             trailing: Column(
//               children: [
//                 Text(
//                   '17:42',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: const Color(0xff707991)),
//                 ),
//                 const Padding(
//                     padding: EdgeInsets.only(top: 6),
//                     child: SizedBox(
//                       width: 10,
//                       height: 10,
//                     ))
//               ],
//             ),
//           ),
// //===================================================================================================================

//           ListTile(
//             leading: Image.asset('assets/Avatar (5).png'),
//             title: Text(
//               'Office Chat',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             subtitle: Text(
//               'Lewis: All done mate 😆  ',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: const Color(0xff707991)),
//             ),
//             trailing: Column(
//               children: [
//                 Text(
//                   '17:08',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: const Color(0xff707991)),
//                 ),
//                 const Padding(
//                     padding: EdgeInsets.only(top: 6),
//                     child: SizedBox(
//                       width: 10,
//                       height: 10,
//                     ))
//               ],
//             ),
//           ),
// //===================================================================================================================

//           ListTile(
//             leading: Image.asset('assets/Avatar (6).png'),
//             title: Text(
//               'Announcements',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             subtitle: Text(
//               'Channel created',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: const Color(0xff707991)),
//             ),
//             trailing: Column(
//               children: [
//                 Text(
//                   '16:15',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: const Color(0xff707991)),
//                 ),
//                 const Padding(
//                     padding: EdgeInsets.only(top: 6),
//                     child: SizedBox(
//                       width: 10,
//                       height: 10,
//                     ))
//               ],
//             ),
//           ),
// //===================================================================================================================

//           ListTile(
//             leading: Image.asset('assets/Avatar (7).png'),
//             title: Text(
//               'Little Sister',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             subtitle: Text(
//               'Tell mom i will be home for tea 💜  ',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: const Color(0xff707991)),
//             ),
//             trailing: Column(
//               children: [
//                 Text(
//                   'Wed',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: const Color(0xff707991)),
//                 ),
//                 const Padding(
//                     padding: EdgeInsets.only(top: 6),
//                     child: SizedBox(
//                       width: 10,
//                       height: 10,
//                     ))
//               ],
//             ),
//           ),
// //===================================================================================================================

//           ListTile(
//             leading: Image.asset('assets/Avatar (8).png'),
//             title: Text(
//               'Art Class',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             subtitle: Text(
//               'Emily: Editorial',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: const Color(0xff707991)),
//             ),
//             trailing: Column(
//               children: [
//                 Text(
//                   'Tue',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: const Color(0xff707991)),
//                 ),
//                 const Padding(
//                     padding: EdgeInsets.only(top: 6),
//                     child: SizedBox(
//                       width: 10,
//                       height: 10,
//                     ))
//               ],
//             ),
//           ),
// //===================================================================================================================

//           ListTile(
//             leading: Image.asset('assets/Avatar (1).png'),
//             title: Text(
//               'Theresa ',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.black),
//             ),
//             subtitle: Text(
//               'Okay, i’ll work on it when it’s...',
//               style: GoogleFonts.inter(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: const Color(0xff707991)),
//             ),
//             trailing: Column(
//               children: [
//                 Text(
//                   '06:21',
//                   style: GoogleFonts.inter(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: const Color(0xffED8936)),
//                 ),
//                 Padding(
//                     padding: const EdgeInsets.only(top: 6),
//                     child: Container(
//                       width: 25.07,
//                       height: 20,
//                       decoration: const ShapeDecoration(
//                         color: Color(0xFFED8936),
//                         shape: OvalBorder(),
//                       ),
//                       child: const Center(
//                           child: Text('4',
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 13))),
//                     ))
//               ],
//             ),
//           ),
// //===================================================================================================================

//           Padding(
//             padding: const EdgeInsets.only(bottom: 90),
//             child: ListTile(
//               leading: Image.asset('assets/Avatar.png'),
//               title: Text(
//                 'Greg James',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                     color: Colors.black),
//               ),
//               subtitle: Text(
//                 'I got a job at SpaceX 🎉 🚀  ',
//                 style: GoogleFonts.inter(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: const Color(0xff707991)),
//               ),
//               trailing: Column(
//                 children: [
//                   Text(
//                     '18:02',
//                     style: GoogleFonts.inter(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 12,
//                         color: const Color(0xff707991)),
//                   ),
//                   const Padding(
//                       padding: EdgeInsets.only(top: 6),
//                       child: SizedBox(
//                         width: 10,
//                         height: 10,
//                       ))
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
