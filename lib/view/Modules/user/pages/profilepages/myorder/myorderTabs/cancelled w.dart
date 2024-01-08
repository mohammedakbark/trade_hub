import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/model/successpayment.dart';

class CancelledOrderUser extends StatefulWidget {
  List<SuccessPaymentMoel> canceledOrderList;
  CancelledOrderUser({super.key, required this.canceledOrderList});

  @override
  State<CancelledOrderUser> createState() => _CancelledOrderUserState();
}

class _CancelledOrderUserState extends State<CancelledOrderUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.canceledOrderList.isEmpty
          ? Center(
              child: Text("No orders"),
            )
          : ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: widget.canceledOrderList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                widget.canceledOrderList[index].image))),
                  ),
                  title: Text(widget.canceledOrderList[index].productName
                      .toUpperCase()),
                  subtitle: Text(widget.canceledOrderList[index].amount),
                  trailing: const Text(
                    "Canceled",
                    style: TextStyle(color: Colors.grey),
                  ),
                );
              },
            ),
    );
  }
}
