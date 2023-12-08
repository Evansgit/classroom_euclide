import 'package:crypto_template/Screen/FullApps/RecipesMeat/Screen/Home/home.dart';
import 'package:flutter/material.dart';

class LoginScreen41 extends StatefulWidget {
  @override
  _LoginScreen41State createState() => _LoginScreen41State();
}

class _LoginScreen41State extends State<LoginScreen41> {
  @override
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            color: Colors.black38,
            image: DecorationImage(
              image: AssetImage(
                  'lib/Screen/UI_Screen/Expensa_Apps/assets/img/background.jpg'),
              fit: BoxFit.cover,
            )),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  colors: [
//                    Color.fromRGBO(0, 0, 0, 0.3),
//                    Color.fromRGBO(0, 0, 0, 0.4)
//                  ],
//                  begin: FractionalOffset.topCenter,
//                  end: FractionalOffset.bottomCenter)),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  /// Animation text marketplace to choose LoginScreen41 with Hero Animation (Click to open code)
                  Padding(
                    padding:
                        EdgeInsets.only(top: mediaQuery.padding.top + 80.0),
                    child: Hero(
                      tag: "market",
                      child: Image.asset(
                        "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/splash_logo.png",
                        height: 100.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 100.0),
                    child: _buildTextFeild(
                        widgetIcon: Image.asset(
                          "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/login_user.png",
                          height: 22.0,
                        ),
                        controller: _emailController,
                        hint: 'Email',
                        obscure: false,
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.start),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    child: _buildTextFeild(
                        widgetIcon: Image.asset(
                          "lib/Screen/UI_Screen/Expensa_Apps/assets/icon/login_pass.png",
                          height: 12.0,
                        ),
                        controller: _passwordController,
                        hint: 'Contrasena',
                        obscure: true,
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.start),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 40.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => home()));
                      },
                      child: Container(
                        height: 52.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Color(0xFF026DB5)),
                        child: Center(
                          child: Text(
                            "Ingresar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 19.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Olvidaste tu contrasena?",
                    style: TextStyle(
                      color: Color(0xFF026DB5),
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFeild({
    String? hint,
    TextEditingController? controller,
    TextInputType? keyboardType,
    required bool obscure,
    required TextAlign textAlign,
    Widget? widgetIcon,
  }) {
    return Column(
      children: <Widget>[
        Container(
          height: 58.0,
          decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
            child: Theme(
              data: ThemeData(hintColor: Colors.transparent),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  style: new TextStyle(color: Colors.white),
                  textAlign: textAlign,
                  obscureText: obscure,
                  controller: controller,
                  keyboardType: keyboardType,
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: widgetIcon,
                      ),
                      contentPadding: EdgeInsets.all(0.0),
                      filled: true,
                      fillColor: Colors.transparent,
                      labelText: hint,
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(
                        color: Colors.white30,
                      )),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6.0, right: 6.0),
          child: Container(
            height: 1.0,
            width: double.infinity,
            color: Color(0xFF676C74),
          ),
        )
      ],
    );
  }
}
