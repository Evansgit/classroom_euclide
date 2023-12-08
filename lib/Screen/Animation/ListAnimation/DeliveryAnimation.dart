import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DeliveryAnimation extends StatefulWidget {
  DeliveryAnimation({Key? key}) : super(key: key);

  @override
  State<DeliveryAnimation> createState() => _DeliveryAnimationState();
}

class _DeliveryAnimationState extends State<DeliveryAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Delivery Animation",
          style: TextStyle(fontFamily: "Sofia", color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Lottie.network(
              "https://assets10.lottiefiles.com/temp/lf20_IxpQni.json"),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: 50.0,
            width: 200.0,
            decoration: BoxDecoration(color: Colors.greenAccent),
            child: Center(
                child: Text(
              "Order Pizza",
              style: TextStyle(fontFamily: "Sofia", color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
