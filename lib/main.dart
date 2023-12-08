import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:firebase_core/firebase_core.dart';

import 'Screen/Integration/IntegrationList.dart';
import 'package:easy_localization/easy_localization.dart';

import 'Screen/Support_Screen/HomePage.dart';
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', 'DZ'),
        Locale('zh', 'CN'),
        Locale('pt', 'BR'),
        Locale('hi', 'IN'),
        Locale('id', 'ID')
      ],
      startLocale: Locale('en', 'US'),
      path: 'lib/Screen/Integration/Language_Integration/language',
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// To set orientation always portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    ///Set color status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));

    return MaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      title: 'BigUI Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white,
          primaryColorLight: Colors.white,
          primaryColor: Colors.white),
      home: SplashScreen(),
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      //   EasylocaLizationDelegate(
      //     locale: data.locale!,
      //     path: 'lib/Screen/Integration/Language_Integration/language',
      //   )
      // ],
      // supportedLocales: [
      //   Locale('en', 'US'),
      //   Locale('ar', 'DZ'),
      //   Locale('zh', 'CN'),
      //   Locale('pt', 'BR'),
      //   Locale('hi', 'IN'),
      //   Locale('id', 'ID')
      // ],
      // locale: data.savedLocale,
      // // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void _Navigator() {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (_, __, ___) => new HomeNavigationPage(),
        transitionDuration: Duration(milliseconds: 2000),
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return Opacity(
            opacity: animation.value,
            child: child,
          );
        }));
  }

  /// Set timer splash
  _timer() async {
    return Timer(const Duration(milliseconds: 2300), _Navigator);
  }

  @override
  void initState() {
    super.initState();
    _timer();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logoApps.png",
                    width: 50.0,
                    height: 50.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Biggest Flutter Kit",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Color.fromARGB(66, 16, 14, 14),
                        fontWeight: FontWeight.w500,
                        fontSize: 33.0),
                  )
                ],
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Text("Version 1.000.145"),
            ))
          ],
        ),
      ),
    );
  }
}
