import 'package:crypto_template/Screen/FullApps/Workout/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: 'HARD\t',
                      style: TextStyle(
                          fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ELEMENT',
                          style: TextStyle(color: kFirstColor),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About You",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "We want to know more about you, follow the next \nsteps to complete the information",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      OptionWidget(
                        state: "I'm\nBeginner",
                        detail: "I have trained several times",
                        enable: true,
                        onTap: () => () {},
                      ),
                      SizedBox(width: 20),
                      OptionWidget(
                        state: "I'm\nExpert",
                        detail: "I have trained more times",
                        enable: false,
                        onTap: () => () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  buildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooter() {
    return Row(
      children: [
        TextButton(
          onPressed: () => Get.back(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                "Back",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () => Get.offAndToNamed(Routes.TRAIN),
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kFirstColor,
            ),
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
