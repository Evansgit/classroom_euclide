import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen27 extends StatefulWidget {
  @override
  State createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen27> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      content: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 80, left: 16),
                child: SvgPicture.asset(
                    'lib/Screen/UI_Screen/Login_Screen/Assets/login27/sample_logo.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 28),
                child: Text(
                  'Welcome back!',
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 34),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 70),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xFF262630)),
                  child: Column(
                    children: <Widget>[
                      emailTextField(),
                      formDivider(),
                      passwordTextField(),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0, backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {
                      print('Forgot button pressed');
                    },
                    child: Text(
                      'Forgot password?',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontFamily: "Sofia", color: Colors.white60),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: loginButton(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 0),
      child: TextField(
        cursorColor: Colors.white24,
        style: Theme.of(context).textTheme.bodyLarge,
        decoration: InputDecoration(
            hintText: 'Email',
            border: InputBorder.none,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontFamily: "Sofia", color: Colors.white60),
            icon: Icon(
              Icons.mail_outline,
              color: Colors.white60,
            )),
      ),
    );
  }

  Widget formDivider() {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Divider(
        color: Color(0xFF2c2f37),
      ),
    );
  }

  Widget passwordTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 8),
      child: TextField(
        obscureText: _obscurePassword,
        cursorColor: Colors.white24,
        style: Theme.of(context).textTheme.bodyLarge,
        decoration: InputDecoration(
            hintText: 'Password',
            border: InputBorder.none,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontFamily: "Sofia", color: Colors.white60),
            icon: Icon(
              Icons.lock_outline,
              color: Colors.white60,
            ),
            suffixIcon: InkWell(
              onTap: togglePassword,
              child: _obscurePassword
                  ? Icon(
                      Icons.visibility,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                    ),
            ),
            suffixIconConstraints: BoxConstraints.tight(Size(56, 24))),
      ),
    );
  }

  Widget loginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Login',
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontFamily: "Sofia", color: Colors.white, fontSize: 37),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: FloatingActionButton(
            onPressed: () {
              print('Login button pressed');
            },
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        )
      ],
    );
  }

  Widget loginViaFacebookButton() {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 16, right: 16),
      child: InkWell(
        onTap: () {
          print('Login via Facebook pressed');
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF3c5999), borderRadius: BorderRadius.circular(8)),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Image.asset(
                    'lib/Screen/FullApps/SunriseMart/Assets/facebook.jpg',
                    color: Colors.white,
                    width: 24,
                    height: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Text(
                    'Login with Facebook',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void togglePassword() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }
}

class AuthBackground extends StatelessWidget {
  final Widget content;

  const AuthBackground({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xFF0f1115),
        ),
        SvgPicture.asset(
            'lib/Screen/UI_Screen/Login_Screen/Assets/login27/dots_rectangle.svg'),
        Positioned(
          top: 0,
          right: 0,
          child: SvgPicture.asset(
              'lib/Screen/UI_Screen/Login_Screen/Assets/login27/background_circles.svg'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SvgPicture.asset(
              'lib/Screen/UI_Screen/Login_Screen/Assets/login27/striped_oval.svg'),
        ),
        content
      ],
    );
  }
}
