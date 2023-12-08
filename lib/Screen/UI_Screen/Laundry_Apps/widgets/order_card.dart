import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/models/order.dart';
import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/utils/helper.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  final Order? order;

  OrderCard({this.order});

  // For formatting date
  final DateFormat formatter = DateFormat("yyyy MM dd");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextScreen(context, "/single-order");
      },
      child: Container(
        height: 121.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color.fromRGBO(220, 233, 245, 1),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "lib/Screen/UI_Screen/Laundry_Apps/assets/images/icon6.png",
              height: 100.0,
            ),
            SizedBox(
              width: 25.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Laundry",
                    style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(19, 22, 33, 1),
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  textRow("Order On", formatter.format(order!.placedDate!)),
                  SizedBox(
                    height: 5.0,
                  ),
                  textRow("Finish On", formatter.format(order!.arrivalDate!))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget textRow(String textOne, String textTwo) {
  return Wrap(
    children: [
      Text(
        "$textOne:",
        style: TextStyle(
          fontFamily: "Sofia",
          color: Color.fromRGBO(74, 77, 84, 0.7),
          fontSize: 14.0,
        ),
      ),
      SizedBox(
        width: 4.0,
      ),
      Text(
        textTwo,
        style: TextStyle(
          color: Color.fromRGBO(19, 22, 33, 1),
          fontSize: 14.0,
        ),
      ),
    ],
  );
}

Widget getOrderIconWidget(OrderStatus status) {
  switch (status) {
    case OrderStatus.PICKING_UP:
      return Container(
        width: 37.0,
        height: 37.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(221, 40, 81, 0.18),
        ),
        child: Icon(
          Icons.replay_outlined,
          color: Color.fromRGBO(221, 40, 81, 1),
        ),
      );
    case OrderStatus.DELIVERING:
      return Container(
        width: 37.0,
        height: 37.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(255, 99, 2, 0.15),
        ),
        child: Icon(
          Icons.history,
          color: Color.fromRGBO(255, 99, 2, 1),
        ),
      );
    default:
      return Container(
        width: 37.0,
        height: 37.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(221, 40, 81, 0.18),
        ),
        child: Icon(
          Icons.local_fire_department,
          color: Color.fromRGBO(221, 40, 81, 1),
        ),
      );
  }
}

String getOrderStatusText(OrderStatus status) {
  switch (status) {
    case OrderStatus.DELIVERING:
      return "Delivering Order";
    case OrderStatus.PICKING_UP:
      return "Picking Up Order";
    default:
      return "";
  }
}
