import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen14 extends StatefulWidget {
  @override
  _LoginScreen14State createState() => _LoginScreen14State();
}

class _LoginScreen14State extends State<LoginScreen14> {
  TapGestureRecognizer? registerOnTap;
  @override
  void initState() {
    registerOnTap = TapGestureRecognizer();
    registerOnTap?.onTap = () {};
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            SizedBox(
              height: 90.0,
            ),
            Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 43,
                  fontFamily: "Sofia"),
            ),
            SizedBox(height: 90),
            AppTextField(
              hint: "Email ID",
              icon: Icons.email,
            ),
            SizedBox(height: 12),
            AppTextField(
              hint: "Password",
              icon: Icons.password,
              helpContent: Text(
                "Forgot?",
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              helpOnTap: () {},
            ),
            SizedBox(height: 92),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0, backgroundColor: Colors.black,
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 24),
            Text(
              "Or, login with...",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: AppOutlineButton(
                    asset: "lib/Screen/FullApps/SunriseMart/Assets/google.jpg",
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: AppOutlineButton(
                    asset:
                        "lib/Screen/FullApps/SunriseMart/Assets/facebook.jpg",
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 12),
              ],
            ),
            SizedBox(height: 12),
            Text.rich(
              TextSpan(
                text: "Not have account? ",
                children: [
                  TextSpan(
                    text: "Register",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: registerOnTap,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final VoidCallback? helpOnTap;
  final Widget? helpContent;

  AppTextField({
    required this.icon,
    required this.hint,
    this.helpOnTap,
    this.helpContent,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black38),
            prefixIcon: Icon(icon),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
          ),
        ),
        if (helpContent != null && helpOnTap != null)
          Container(
            height: 48,
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: helpOnTap,
                child: helpContent,
              ),
            ),
          )
      ],
    );
  }
}

class AppOutlineButton extends StatelessWidget {
  final String asset;
  final VoidCallback onTap;

  AppOutlineButton({required this.asset, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Image.asset(
          asset,
          height: 24,
        ),
      ),
      onPressed: onTap,
    );
  }
}
