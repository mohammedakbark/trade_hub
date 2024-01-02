// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Chatpage extends StatefulWidget {
//   const Chatpage({super.key});

//   @override
//   State<Chatpage> createState() => _ChatpageState();
// }

// class _ChatpageState extends State<Chatpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffB7A6FC),
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Icon(
//                         Icons.arrow_back_ios,
//                         size: 20,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Image.asset('assets/Avatar (1).png'),
//                     ),
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
//                             'Online',
//                             style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 13,
//                                 color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 const Icon(
//                   Icons.call_outlined,
//                   color: Colors.white,
//                 )
//               ],
//             ),
//           ),

//           //=================================================================================================================

//           Padding(
//             padding: const EdgeInsets.only(top: 20),
//             child: Container(
//               width: double.infinity,
//               height: 700,
//               decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40))),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: Text(
//                       'Today',
//                       style: GoogleFonts.poppins(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                           color: const Color(0xff3D4260)),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 10, top: 50),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Container(
//                           width: 298,
//                           height: 53,
//                           decoration: const BoxDecoration(
//                               color: Color(0xffB7A6FC),
//                               borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(12),
//                                   topLeft: Radius.circular(12),
//                                   bottomLeft: Radius.circular(12))),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 10, right: 50),
//                                 child: Text(
//                                   'Hi Alvin, good morning!! 🌅',
//                                   style: GoogleFonts.poppins(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 14,
//                                       color: Colors.white),
//                                 ),
//                               ),
//                               const Padding(
//                                 padding: EdgeInsets.only(right: 10),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     Icon(
//                                       Icons.check,
//                                       size: 20,
//                                       color: Colors.white,
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   //======================================================================================================================

//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, top: 30),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 261,
//                           height: 70,
//                           decoration: const BoxDecoration(
//                               color: Color(0xffE0E0E0),
//                               borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(12),
//                                   topLeft: Radius.circular(12),
//                                   bottomLeft: Radius.circular(0),
//                                   bottomRight: Radius.circular(12))),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 10, left: 20),
//                                 child: Text(
//                                   'Halo! Good Morning, whats up man?',
//                                   style: GoogleFonts.poppins(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 14,
//                                       color: const Color(0xff3D4260)),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   //======================================================================================================================

//                   Padding(
//                     padding: const EdgeInsets.only(right: 10, top: 30),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Container(
//                           width: 304,
//                           height: 68,
//                           decoration: const BoxDecoration(
//                               color: Color(0xffB7A6FC),
//                               borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(12),
//                                   topLeft: Radius.circular(12),
//                                   bottomLeft: Radius.circular(12))),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     top: 5, left: 20, right: 20),
//                                 child: Text(
//                                   'Sorry to bother, can i ask you for a help today?',
//                                   style: GoogleFonts.poppins(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 14,
//                                       color: Colors.white),
//                                 ),
//                               ),
//                               const Padding(
//                                 padding: EdgeInsets.only(right: 10),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     Icon(
//                                       Icons.check,
//                                       size: 20,
//                                       color: Colors.white,
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   //======================================================================================================================

//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, top: 30),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 271,
//                           height: 70,
//                           decoration: const BoxDecoration(
//                               color: Color(0xffE0E0E0),
//                               borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(12),
//                                   topLeft: Radius.circular(12),
//                                   bottomLeft: Radius.circular(0),
//                                   bottomRight: Radius.circular(12))),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 10, left: 20),
//                                 child: Text(
//                                   'Of course, what can i help you with??',
//                                   style: GoogleFonts.poppins(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 14,
//                                       color: const Color(0xff3D4260)),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         surfaceTintColor: Colors.white,
//         height: 100,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             const Icon(
//               Icons.camera_alt,
//               color: Color(0xffB7A6FC),
//             ),
//             Container(
//               height: 48,
//               width: 280,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(90),
//                   color: const Color(0xffECF0F0)),
//               child: const TextField(
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: '      type a message..',
//                     suffixIcon: Icon(Icons.mic_none),
//                     hintStyle: TextStyle(
//                         color: Color(0xff544C4C),
//                         fontWeight: FontWeight.w500,
//                         fontSize: 14)),
//               ),
//             ),
//             const Icon(
//               Icons.send,
//               color: Color(0xff19DF69),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
