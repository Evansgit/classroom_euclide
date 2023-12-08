import 'package:crypto_template/Screen/FullApps/SunriseMart/Bottom_Nav_Bar/BottomNavigationBar.dart';
import 'package:flutter/material.dart';

import '../../../../Library/Constant/Slideanimation.dart';

class LoginScreenT2 extends StatefulWidget {
  LoginScreenT2({Key? key}) : super(key: key);

  _LoginScreenT2State createState() => _LoginScreenT2State();
}

class _LoginScreenT2State extends State<LoginScreenT2>
    with SingleTickerProviderStateMixin {
  var _txtStyle = TextStyle(
      fontFamily: "Sofia",
      fontWeight: FontWeight.w600,
      color: Colors.black54,
      fontSize: 16.0);

  @override
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));

    // _tapGestureRecognizer = TapGestureRecognizer()
    //   ..onTap = () {
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => WRSingup1()));
    //   };
  }

  AnimationController? _animationController;

  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: _height,

        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/Screen/FullApps/SunriseMart/Assets/loginBackground.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)

          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 120.0),
                  ),
                  SlideAnimation(
                    position: 1,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromLeft,
                    animationController: _animationController,
                    child: Text(
                      "Grocery",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5FBD84),
                          fontSize: 54.0),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  SlideAnimation(
                    position: 1,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromLeft,
                    animationController: _animationController,
                    child: textFromField(
                      icon: Icons.person,
                      password: false,
                      email: "Name",
                      inputType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  SlideAnimation(
                    position: 1,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromLeft,
                    animationController: _animationController,
                    child: textFromField(
                      icon: Icons.email,
                      password: false,
                      email: "Email",
                      inputType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  SlideAnimation(
                    position: 1,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromLeft,
                    animationController: _animationController,
                    child: textFromField(
                      icon: Icons.vpn_key,
                      password: true,
                      email: "Password",
                      inputType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    height: 130.0,
                  ),
                  SlideAnimation(
                    position: 1,
                    itemCount: 8,
                    slideDirection: SlideDirection.fromLeft,
                    animationController: _animationController,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                new bottomNavigationBarT2()));
                      },
                      child: Container(
                        height: 55.0,
                        width: _width / 1.2,
                        decoration: BoxDecoration(
                          color: Color(0xFF5FBD84),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45.withOpacity(0.15),
                                blurRadius: 19.0,
                                spreadRadius: 2.0)
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Log in",
                            style: _txtStyle.copyWith(
                                color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// textfromfield custom class
class textFromField extends StatelessWidget {
  bool? password;
  String? email;
  IconData? icon;
  TextInputType? inputType;

  textFromField({this.email, this.icon, this.inputType, this.password});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 60.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]),
        padding:
            EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextFormField(
            obscureText: password!,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: email,
                icon: Icon(
                  icon,
                  color: Colors.black38,
                ),
                labelStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Sofia',
                    letterSpacing: 0.3,
                    color: Colors.black38,
                    fontWeight: FontWeight.w600)),
            keyboardType: inputType,
          ),
        ),
      ),
    );
  }
}
