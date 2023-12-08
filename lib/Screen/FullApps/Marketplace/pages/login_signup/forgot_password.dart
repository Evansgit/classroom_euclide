import 'package:flutter/material.dart';

import '../../../../../Library/Carousel/CarouselPro.dart';
import '../../widget/custom_button.dart';
import '../../widget/app_/marketplace.dart';

class ForgotPassword extends StatefulWidget {
  final TextEditingController? email;
  final int? length;
  ForgotPassword({this.email, this.length});
  @override
  _ForgotPasswordState createState() =>
      _ForgotPasswordState(email: email, length: length);
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController? email;
  final int? length;
  _ForgotPasswordState({this.email, this.length});
  bool isEnable = false;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    if (length! > 0) {
      setState(() {
        isEnable = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: new Carousel(
              boxFit: BoxFit.cover,
              autoplay: true,
              animationDuration: Duration(milliseconds: 300),
              dotSize: 0.0,
              dotSpacing: 16.0,
              dotBgColor: Colors.transparent,
              showIndicator: false,
              overlayShadow: false,
              images: [
                AssetImage(
                    'lib/Screen/FullApps/Marketplace/assets/img/loginImage1.jpg'),
                AssetImage(
                    'lib/Screen/FullApps/Marketplace/assets/img/loginImage3.jpg'),
                AssetImage(
                    "lib/Screen/FullApps/Marketplace/assets/img/loginImage2.jpg"),
              ],
              onImageChange: (int, inta) {},
              onImageTap: (int) {},
              overlayShadowColors: Colors.white,
              radius: Radius.circular(8.0),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Color.fromRGBO(0, 0, 0, 0.3),
                  Color.fromRGBO(0, 0, 0, 0.4)
                ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    loading = false;
                  });
                  Navigator.pushNamed(context, '/landing-page');
                }),
          ),
          loading
              ? Center(child: CircularProgressIndicator())
              : Container(
                  padding: EdgeInsets.only(top: 100.0),
                  child: ListView(
                    padding: EdgeInsets.all(10.0),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 100.0),
                        child: MarketPlaceText(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 105.0),
                        child: _buildTextFeild(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            obscure: false,
                            textAlign: TextAlign.start,
                            hint: 'Email'),
                      ),
                      SizedBox(height: 10.0),
                      CustomButton(
                          'Send Via Email',
                          isEnable
                              ? () async {
                                  setState(() {
                                    loading = true;
                                  });
                                  if (email!.text != '') {
                                    if (!RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                            .hasMatch(email!.text)) {
                                      _buildShowDialog(
                                          error: 'Incorrect Email',
                                          errorDetails:
                                              'The email that you\'ve entered is not a valid email address. Please try again.');
                                      return;
                                    } else {}
                                  }
                                }
                              : null),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0, backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {
                          setState(() {
                            loading = false;
                            Navigator.pushNamed(context, '/login');
                          });
                        },
                        child: Text(
                          'Return to Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  void _buildShowDialog({String? error, String? errorDetails}) {
    setState(() {
      loading = false;
    });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('$errorDetails'),
          title: Text('$error'),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0, backgroundColor: Colors.transparent,
              ),
              child: Text('OK'),
              onPressed: () {
                setState(() {
                  loading = false;
                });
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  Widget _buildTextFeild({
    String? hint,
    TextEditingController? controller,
    TextInputType? keyboardType,
    required bool obscure,
    required TextAlign textAlign,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 55.0,
        color: Colors.white70,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: TextField(
              textAlign: textAlign,
              obscureText: obscure,
              controller: controller,
              keyboardType: keyboardType,
              autocorrect: false,
              autofocus: false,
              onChanged: (String value) {
                print('onChanged called');
                isEmpty();
              },
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                contentPadding: EdgeInsets.all(8.0),
                filled: true,
                fillColor: Colors.transparent,
                hintText: hint,
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isEmpty() {
    setState(() {
      if (email!.text.trim() != '') {
        isEnable = true;
      } else {
        isEnable = false;
      }
    });
    return isEnable;
  }
}
