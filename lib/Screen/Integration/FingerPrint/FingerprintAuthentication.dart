import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';

class FingerprintAuthentication extends StatefulWidget {
  static String tag = '/FingerprintAuthentication';

  @override
  _FingerprintAuthenticationState createState() =>
      _FingerprintAuthenticationState();
}

class _FingerprintAuthenticationState extends State<FingerprintAuthentication> {
  final LocalAuthentication auth = LocalAuthentication();

  bool face = false;
  bool fingerprint = false;
  // ignore: non_constant_identifier_names
  String Authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  bool authorized = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await _getAvailableBiometrics();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();
    try {
      face = availableBiometrics.contains(BiometricType.face);
      fingerprint = availableBiometrics.contains(BiometricType.fingerprint);

      setState(() {});
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        Authorized = 'Authenticating';
      });

      authenticated = await auth.authenticate(
        localizedReason: 'Scan your fingerprint to Login',
        // useErrorDialogs: true,
        // stickyAuth: true,
        //biometricOnly: true,
     
      );

      authorized = authenticated;
      setState(() {
        _isAuthenticating = false;
        Authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return HandleError(
              code: e.code,
              message: e.message,
            );
          });
    }
    if (!mounted) return;

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      authorized = authenticated;
      Authorized = message;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      authorized = authenticated;
    });
  }

  void _cancelAuthentication() {
    auth.stopAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Fingerprint Authentication",
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0.0,
        ),
        body: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                fingerprint
                    ? InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: _isAuthenticating
                            ? _cancelAuthentication
                            : _authenticate,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.lightBlue),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.fingerprint,
                                  color: Colors.lightBlue, size: 75),
                              10.height,
                              Text('Fingerprint',
                                  style:
                                      boldTextStyle(color: Colors.lightBlue)),
                            ],
                          ),
                        ),
                      )
                    : InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          toasty(context, "Fingerprint not available");
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Icon(Icons.fingerprint,
                                  color: Colors.grey, size: 75),
                              10.height,
                              Text('Fingerprint',
                                  style: boldTextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                face
                    ? InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: _isAuthenticating
                            ? _cancelAuthentication
                            : _authenticate,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue)),
                          child: Column(
                            children: [
                              Icon(Icons.face, color: Colors.blue, size: 75),
                              10.height,
                              Text('Face',
                                  style: boldTextStyle(color: Colors.blue)),
                            ],
                          ),
                        ),
                      )
                    : InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          toasty(context, "Face biometric is unavailable");
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                          child: Column(
                            children: [
                              Icon(Icons.face, color: Colors.grey, size: 75),
                              10.height,
                              Text('Face',
                                  style: boldTextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
            authorized
                ? Lottie.asset(
                    'images/integrations/img/authentication.json',
                    height: 250,
                    width: 250,
                    reverse: true,
                    animate: mounted,
                    repeat: false,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class HandleError extends StatelessWidget {
  final String? code;
  final String? message;

  HandleError({this.code, this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: context.scaffoldBackgroundColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(0),
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.blue,
              child: Column(
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Colors.white,
                    size: 75,
                  ),
                  Text(code.validate(),
                      textAlign: TextAlign.center,
                      style: boldTextStyle(size: 18, color: white)),
                ],
              ),
            ),
            Text(
              message.validate(),
              style: secondaryTextStyle(),
              textAlign: TextAlign.justify,
            ).paddingOnly(left: 8, right: 8),
            16.height,
            TextButton(
              onPressed: () {
                finish(context);
              },
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.red,
                onPressed: () {
                  finish(context);
                },
                child: (Text(
                  'Retry',
                  style: boldTextStyle(color: Colors.white),
                )),
              ),
            ),
            16.height,
          ],
        ),
      ),
    );
  }
}
