import 'package:flutter/material.dart';

class addPhoneNumber extends StatefulWidget {
  @override
  _addPhoneNumberState createState() => _addPhoneNumberState();
}

class _addPhoneNumberState extends State<addPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: CustomInputTextField(
                    obscureText: false,
                    textAlign: TextAlign.start,
                    hintText: 'Mobile Phone Number',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Container(
                    height: 45.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFA3BDED),
                    ),
                    child: Center(
                      child: Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
          Container(
            height: 200.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: statusBarHeight),
                  height: 58.0 + statusBarHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(

                      /// gradient in appbar
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFFA3BDED),
                            const Color(0xFF6991C7),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "Add Phone Number",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomInputTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final Function? onChanged;
  final bool? obscureText;
  final TextAlign? textAlign;

  CustomInputTextField(
      {this.controller,
      this.onChanged,
      this.inputType,
      this.hintText,
      this.obscureText,
      this.textAlign});

  @override
  _CustomInputTextFieldState createState() => _CustomInputTextFieldState(
      controller: controller,
      inputType: inputType,
      hintText: hintText,
      obscureText: obscureText,
      textAlign: textAlign);
}

class _CustomInputTextFieldState extends State<CustomInputTextField> {
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final Function? onChanged;
  final bool? obscureText;
  final TextAlign? textAlign;

  _CustomInputTextFieldState(
      {this.controller,
      this.onChanged,
      this.inputType,
      this.hintText,
      this.obscureText,
      this.textAlign});

  bool? isEnable;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFD2E1FF).withOpacity(0.9),
      child: Theme(
        data: ThemeData(hintColor: Colors.transparent),
        child: TextField(
          textAlign: textAlign!,
          obscureText: obscureText!,
          controller: controller,
          keyboardType: inputType,
          autocorrect: false,
          autofocus: false,
          onChanged: onChanged as void Function(String)?,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(9.0),
              filled: true,
              fillColor: Colors.white70,
              labelText: hintText,
              labelStyle: TextStyle(color: Colors.black54)),
        ),
      ),
    );
  }
}
