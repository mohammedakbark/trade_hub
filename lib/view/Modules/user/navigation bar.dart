// import 'package:flutter/material.dart';
// import 'package:trade_hub/chat.dart';
// import 'package:trade_hub/home.dart';
// import 'package:trade_hub/moments.dart';
// import 'package:trade_hub/profile.dart';
// import 'package:trade_hub/shoping%20page.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   HomePageState createState() => HomePageState();
// }
//
// class HomePageState extends State<HomePage> {
//   var selectedindex = 0;
//   static List abhinavv = [
//     Homeee(),
//     Shoppingpageee(),
//     Momentsss(),
//     Chattt(),
//     Profileee(),
//   ];
//   void onitemtapped(int index) {
//     setState(() {
//       selectedindex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: abhinavv.elementAt(selectedindex),
//       bottomNavigationBar: Container(
//         margin: EdgeInsets.all(20),
//         height: size.width * .155,
//         decoration: BoxDecoration(
//           color: Color(0xffB7A6FC),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.15),
//               blurRadius: 30,
//               offset: Offset(0, 10),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: List.generate(listOfIcons.length, (index) {
//               return InkWell(
//                 onTap: () {
//                   setState(() {
//                     selectedindex = index;
//                     // Add logic to handle the icon click if needed
//                   });
//                 },
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     AnimatedContainer(
//                       duration: Duration(milliseconds: 1500),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       margin: EdgeInsets.only(
//                         bottom: index == selectedindex ? 0 : size.width * .029,
//                         right: index == listOfIcons.length - 1
//                             ? 0
//                             : size.width * .022,
//                         left: size.width * .022,
//                       ),
//                       width: size.width * .128,
//                       height: index == selectedindex ? size.width * .014 : 0,
//                       decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.vertical(
//                           bottom: Radius.circular(10),
//                         ),
//                       ),
//                     ),
//                     Icon(
//                       listOfIcons[index],
//                       size: size.width * .076,
//                       color:
//                           index == selectedindex ? Colors.red : Colors.black38,
//                     ),
//                     SizedBox(height: size.width * .03),
//                   ],
//                 ),
//               );
//             }),
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<IconData> listOfIcons = [
//     Icons.home_outlined,
//     Icons.card_giftcard,
//     Icons.link_outlined,
//     Icons.message_outlined,
//     Icons.person,
//   ];
// }

//
// import 'package:floating_navbar/floating_navbar.dart';
// import 'package:floating_navbar/floating_navbar_item.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:trade_hub/chat.dart';
// import 'package:trade_hub/home.dart';
// import 'package:trade_hub/moments.dart';
// import 'package:trade_hub/shoping%20page.dart';
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'FloatingNavBar',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: FloatingNavBar(
//         resizeToAvoidBottomInset: false,
//         color: Colors.green,
//         selectedIconColor: Colors.white,
//         unselectedIconColor: Colors.white.withOpacity(0.6),
//         items: [
//           FloatingNavBarItem(iconData: Icons.home_outlined, page: Homeee(), title: 'Home'),
//           FloatingNavBarItem(iconData: Icons.local_hospital_outlined, page: Shoppingpageee(), title: 'Doctors'),
//           FloatingNavBarItem(iconData: Icons.alarm, page: Momentsss(), title: 'Reminders'),
//           FloatingNavBarItem(iconData: Icons.pending_actions_outlined, page: Chattt(), title: 'Records'),
//         ],
//         horizontalPadding: 10.0,
//         hapticFeedback: true,
//         showTitle: true,
//       ),
//     );
//   }
// }
//
// class Home {
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/utils/variable.dart';

import 'package:trade_hub/view/Modules/user/pages/home.dart';
import 'package:trade_hub/view/Modules/user/pages/profile.dart';
import 'package:trade_hub/view/Modules/user/pages/shoping%20page.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class Navigationnn extends StatefulWidget {
  const Navigationnn({super.key});

  @override
  State<Navigationnn> createState() => _NavigationnnState();
}

class _NavigationnnState extends State<Navigationnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Firestore>(
        builder: (contex,firestore,child) {
          return FutureBuilder(
              future: firestore
                  .fetchCurrentUser(FirebaseAuth.instance.currentUser!.uid),
              builder: (
                context,
                snapshot,
              ) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                const  Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return FloatingNavBar(
                  resizeToAvoidBottomInset: false,
                  color: const Color(0xffB7A6FC).withOpacity(0.9),
                  selectedIconColor: Colors.red,
                  unselectedIconColor: Colors.white,
                  items: [
                    FloatingNavBarItem(
                        iconData: Icons.home_outlined,
                        page: const Homeee(),
                        title: 'Home'),
                    FloatingNavBarItem(
                        iconData: CupertinoIcons.gift,
                        page: const Shoppingpageee(),
                        title: 'Shop'),
                    // FloatingNavBarItem(
                    //     iconData: CupertinoIcons.link,
                    //     page: const Momentsss(),
                    //     title: 'Moments'),
                    // FloatingNavBarItem(
                    //     iconData: CupertinoIcons.chat_bubble_text,
                    //     page: const AllChatPage(),
                    //     title: 'Chat'),
                    FloatingNavBarItem(
                        iconData: CupertinoIcons.person_alt,
                        page: const Profileee(),
                        title: 'Profile'),
                  ],
                  horizontalPadding: 10.0,
                  hapticFeedback: true,
                  showTitle: true,
                );
              });
        }
      ),
    );
  }
}
