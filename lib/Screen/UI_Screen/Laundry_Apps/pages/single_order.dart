import 'package:crypto_template/Screen/UI_Screen/Laundry_Apps/utils/constants.dart';
import 'package:flutter/material.dart';


class SingleOrder extends StatefulWidget {
  @override
  _SingleOrderState createState() => _SingleOrderState();
}

class _SingleOrderState extends State<SingleOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF999B84),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              right: 0.0,
              top: 10.0,
              child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                    "lib/Screen/UI_Screen/Laundry_Apps/assets/images/cloth_faded.png"),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: kToolbarHeight,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Details Wash\n",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Sofia"),
                          ),
                          TextSpan(
                            text: "ID 421SD3",
                            style:
                                Theme.of(context).textTheme.titleLarge!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Constants.scaffoldBackgroundColor,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 24.0,
                        horizontal: 16.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Laundry Details :",
                            style:
                                Theme.of(context).textTheme.titleLarge!.copyWith(
                                      color: Color.fromRGBO(74, 77, 84, 1),
                                      fontSize: 19.0,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          getItemRow("10", "Shirts", "\$30.00"),
                          getItemRow("22", "T-shirts", "\$50.00"),
                          getItemRow("8", "Pants", "\$80.00"),
                          getItemRow("9", "House dress", "\$90.00"),
                          getItemRow("12", "Suit", "\$80.00"),
                          getItemRow("13", "Jeans", "\$20.00"),
                          getItemRow("12", "Pants", "\$80.00"),
                          SizedBox(
                            height: 20.0,
                          ),
                          Divider(),
                          SizedBox(
                            height: 10.0,
                          ),
                          getSubtotalRow("Subtotal", "\$200.00"),
                          getSubtotalRow("Delivery", "\$225.00"),
                          SizedBox(
                            height: 5.0,
                          ),
                          Divider(),
                          SizedBox(
                            height: 10.0,
                          ),
                          getTotalRow("Total", "\$225.00"),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getTotalRow(String title, String amount) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromRGBO(19, 22, 33, 1),
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Spacer(),
        Text(
          amount,
          style: TextStyle(
            color: Color(0xFF999B84),
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
        )
      ],
    ),
  );
}

Widget getSubtotalRow(String title, String price) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: "Sofia",
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Text(
          price,
          style: TextStyle(
            fontFamily: "Sofia",
            fontWeight: FontWeight.w800,
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 17.0,
          ),
        )
      ],
    ),
  );
}

Widget getItemRow(String count, String item, String price) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Row(
      children: [
        Text(
          count,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
            fontFamily: "Sofia",
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Text(
            " x $item",
            style: TextStyle(
              fontFamily: "Sofia",
              color: Colors.black45,
              fontSize: 17.0,
            ),
          ),
        ),
        Text(
          price,
          style: TextStyle(
            color: Color(0xFF999B84),
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Sofia",
          ),
        )
      ],
    ),
  );
}
