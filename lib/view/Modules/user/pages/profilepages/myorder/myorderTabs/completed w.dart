import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/model/successpayment.dart';
import 'package:trade_hub/view/Modules/user/BuyProduct/buyselectedproduct.dart';

class CompletedOrderUser extends StatefulWidget {
  List<SuccessPaymentMoel> completedOrderList;
  CompletedOrderUser({super.key, required this.completedOrderList});

  @override
  State<CompletedOrderUser> createState() => _CompletedOrderUserState();
}

class _CompletedOrderUserState extends State<CompletedOrderUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.completedOrderList.isEmpty
          ? Center(
              child: Text("No orders"),
            )
          : ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: widget.completedOrderList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                widget.completedOrderList[index].image))),
                  ),
                  title: Text(widget.completedOrderList[index].productName
                      .toUpperCase()),
                  subtitle: Text(widget.completedOrderList[index].amount),
                  trailing: const Text(
                    "Completed",
                    style: TextStyle(color: Colors.green),
                  ),
                );
              },
            ),
    );
  }
}
