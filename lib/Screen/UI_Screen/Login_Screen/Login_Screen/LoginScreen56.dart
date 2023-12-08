import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginScreen56 extends StatefulWidget {
  static String tag = '/LoginScreen56';

  @override
  LoginScreen56State createState() => LoginScreen56State();
}

class LoginScreen56State extends State<LoginScreen56> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    var tmPrimaryColor = Color(0xFF65BACE);
    var tmSecondaryColor = Color(0xFF37EABB);

    var tmGreenGradient1 = Color(0XFF84fab0);
    var tmGreenGradient2 = Color(0XFF8fd3f4);
    var tmBlue = Color(0XFF3463B3);
    var theme1ContainerColor = Color(0xFF4D4376);
    var theme2ContainerColor = Color(0xFF315476);
    var theme3ContainerColor = Color(0xFFF78CA0);
    var theme4ContainerColor = Color(0xFFFD9A8B);
    var theme5ContainerColor = Color(0xFF6F86D7);
    var theme6ContainerColor = Color(0xFF52B6E9);
    var theme7ContainerColor = Color(0xFFCC71EF);
    var theme8ContainerColor = Color(0xFFF471D1);
    var checkColor = Color(0xFFDCE0E3);

    Widget tmButton(BuildContext context,
        {width = Double,
        value = String,
        onTap = Function,
        IconData? icon,
        Color? color}) {
      return Container(
        padding: EdgeInsets.all(12),
        width: width,
        decoration: BoxDecoration(
          borderRadius: radius(30),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              tmGreenGradient2,
              tmGreenGradient1,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Text(value,
                style: boldTextStyle(color: white),
                textAlign: TextAlign.center),
            8.width,
            Icon(Icons.arrow_forward_ios, color: white, size: 14),
          ],
        ),
      ).onTap(() {
        onTap.call();
      }, borderRadius: radius(30));
    }

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Helio',
                textDirection: TextDirection.ltr,
                style: TextStyle(
  fontFamily: "Poppins",fontSize: 48)),
            32.height,
            Container(
              decoration: boxDecorationWithRoundedCorners(
                boxShadow: defaultBoxShadow(),
                backgroundColor: context.cardColor,
              ),
              padding: EdgeInsets.all(16),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Column(
                  children: [
                    AppTextField(
                      textFieldType: TextFieldType.EMAIL,
                      controller: emailController,
                      decoration: TMInputDecoration(context,
                          borderColor: context.dividerColor, hintText: "Email"),
                    ),
                    8.height,
                    AppTextField(
                      textFieldType: TextFieldType.PASSWORD,
                      controller: passWordController,
                      decoration: TMInputDecoration(context,
                          borderColor: context.dividerColor,
                          hintText: "Password"),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text('Forgot Password?',
                            style: boldTextStyle(
                                size: 14, color: tmSecondaryColor)),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            16.height,
            tmButton(
              context,
              width: context.width(),
              value: "Sign In",
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
            ),
            16.height,
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: secondaryTextStyle(size: 14)),
                  0.width,
                  TextButton(
                    onPressed: () {},
                    child: Text('Sign up', style: boldTextStyle()),
                  )
                ],
              ),
            ),
          ],
        ),
      ).center(),
    );
  }
}

InputDecoration TMInputDecoration(BuildContext context,
        {String? hintText, Widget? suffix, required Color borderColor}) =>
    InputDecoration(
      hintText: hintText,
      hintStyle: primaryTextStyle(color: grey),
      suffixIcon: suffix,
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: borderColor)),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: borderColor)),
    );
