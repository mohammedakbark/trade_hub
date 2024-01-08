import 'package:firebase_auth/firebase_auth.dart';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/admin/Orders/orders_view.dart';
import 'package:trade_hub/view/Modules/admin/homepageShop.dart';
import 'package:trade_hub/view/Modules/admin/profile_shop.dart';
import 'package:trade_hub/view/Modules/admin/settings.dart';
import 'package:trade_hub/view/Modules/user/pages/profile.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class NavigationShop extends StatefulWidget {
  const NavigationShop({super.key});

  @override
  State<NavigationShop> createState() => _NavigationShopState();
}

class _NavigationShopState extends State<NavigationShop> {
  int currenyIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<Firestore>(builder: (context, firestore, child) {
          return FutureBuilder(
              future: firestore.fetchCurrentShop(currentUID),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return SizedBox();
                }
              });
        }),
        bottomNavigationBar: FloatingNavBar(
          index: currenyIndex,
          resizeToAvoidBottomInset: false,
          color: const Color(0xffB7A6FC).withOpacity(0.9),
          selectedIconColor: Colors.red,
          unselectedIconColor: Colors.white,
          items: [
            FloatingNavBarItem(
                iconData: Icons.shopping_bag_rounded,
                page: const HomePageShop(),
                title: 'Shop'),

            FloatingNavBarItem(
                iconData: Icons.shopping_cart,
                page: const MyorderAdmin(),
                title: 'Orders'),
            FloatingNavBarItem(
                iconData: Icons.settings,
                page: const SEttingsShop(),
                title: 'Settings'),

            // FloatingNavBarItem(
            //     iconData: CupertinoIcons.chat_bubble_text,
            //     page: const AllChatPage(),
            //     title: 'Chat'),
            FloatingNavBarItem(
                iconData: CupertinoIcons.person_alt,
                page: const ProfileShop(),
                title: 'Profile'),
          ],
          horizontalPadding: 10.0,
          hapticFeedback: true,
          showTitle: true,
        ));
  }
}
