import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/model/successpayment.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class ActiveOrderUser extends StatefulWidget {
  List<SuccessPaymentMoel> orderList;
  ActiveOrderUser({super.key, required this.orderList});

  @override
  State<ActiveOrderUser> createState() => _ActiveOrderUserState();
}

class _ActiveOrderUserState extends State<ActiveOrderUser> {
  @override
  Widget build(BuildContext context) {
    final firestore = Provider.of<Firestore>(context);
    return Scaffold(
      body: Consumer<Firestore>(builder: (context, firestore, child) {
        return FutureBuilder(
            future: firestore
                .fetchOrdersforUser(FirebaseAuth.instance.currentUser!.uid),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return widget.orderList.isEmpty
                  ? Center(
                      child: Text("No orders"),
                    )
                  : ListView.separated(
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: widget.orderList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        widget.orderList[index].image))),
                          ),
                          title: Text(widget.orderList[index].productName
                              .toUpperCase()),
                          subtitle: Text(widget.orderList[index].amount),
                          trailing: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text(
                                          "do want to cancel this order"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("No")),
                                        TextButton(
                                            onPressed: () async {
                                              await firestore
                                                  .updateToCANCELOrder(
                                                      widget.orderList[index]
                                                          .userID,
                                                      widget
                                                          .orderList[index].id,
                                                      widget.orderList[index]
                                                          .shopId);
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("Yes"))
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.red),
                              )),
                        );
                      },
                    );
            });
      }),
    );
  }
}
