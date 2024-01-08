import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class ShippedOrderForAdmin extends StatefulWidget {
  const ShippedOrderForAdmin({super.key});

  @override
  State<ShippedOrderForAdmin> createState() => _ShippedOrderForAdminState();
}

class _ShippedOrderForAdminState extends State<ShippedOrderForAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      body: Consumer<Firestore>(builder: (context, firestore, child) {
        return FutureBuilder(
            future: firestore.fetchAllCompletdOrderOrderForAdmin(FirebaseAuth.instance.currentUser!.uid),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return firestore.allCompletedOrderListsinShop.isEmpty
                  ? Center(
                      child: Text("No Data"),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                            leading: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(firestore
                                          .allCompletedOrderListsinShop[index]
                                          .image))),
                            ),
                            title: Text(firestore
                                .allCompletedOrderListsinShop[index].productName),
                            subtitle: Text(
                                firestore.allCompletedOrderListsinShop[index].amount),
                            trailing: ElevatedButton(
                             onPressed: (){},
                                
                                child: Text(
                                  "Submitted",
                                )));
                      },
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: firestore.allCompletedOrderListsinShop.length);
            });
      }),
    );
  }
}
