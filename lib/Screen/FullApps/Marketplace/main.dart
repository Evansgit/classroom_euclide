import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/BottomNavigationBar.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/categories.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/new_listing.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/product_detail.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Profile/profile.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/reviews.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/saved.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/main.dart';
import './pages/landing_page.dart';
import './pages/login_signup/sign_up.dart';
import './pages/login_signup/login.dart';
import './pages/login_signup/forgot_password.dart';

/// Set orienttation
class Marketplace extends StatelessWidget {
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
    return new MaterialApp(
      title: "E commerce",
      theme: ThemeData(
          backgroundColor: Colors.blueAccent,
          primaryColorLight: Colors.blueAccent,
          primaryColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

      /// Move splash screen to ChoseLogin Layout
      /// Routes
      routes: <String, WidgetBuilder>{
        "login": (BuildContext context) => new LoginPage()
      },
    );
  }
}

/// Component UI
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

/// Component UI
class _SplashScreenState extends State<SplashScreen> {
  @override

  /// Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  /// To navigate layout change
  void NavigatorPage() {
    Navigator.of(context).pushReplacementNamed("login");
  }

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        /// Set Background image in splash screen layout (Click to open code)
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/Screen/FullApps/Marketplace/assets/img/splashScreen.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          /// Set gradient black in image splash screen (Click to open code)
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(0, 0, 0, 0.4)
              ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /// Animation text marketplace to choose Login with Hero Animation (Click to open code)
                Padding(
                  padding: EdgeInsets.only(top: mediaQuery.padding.top + 100.0),
                  child: Hero(
                    tag: "market",
                    child: Text(
                      "Marketplace",
                      style: TextStyle(
                        fontFamily: 'Sofia',
                        fontWeight: FontWeight.w400,
                        fontSize: 33.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class mainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routes,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }

  Route routes(RouteSettings settings) {
    late var screens;
    if (settings.name == '/') {
      screens = bottomNavigationBar();
    }
    if (settings.name == '/landing-page') {
      screens = LandingPage();
    }
    if (settings.name == '/login') {
      screens = LoginPage();
    }
    if (settings.name == '/signup') {
      screens = SignUp();
    }
    if (settings.name == '/forgot-password') {
      screens = ForgotPassword();
    }
    if (settings.name == '/saved-list-items') {
      screens = SavedItemList();
    }
    if (settings.name == '/categories-list') {
      screens = CategoriesList();
    }
    if (settings.name == '/add-new-product') {
      screens = AddNewProduct();
    }

    if (settings.name == '/reviews-all') {
      screens = ReviewsAll();
    }
    if (settings.name == '/profile') {
      screens = Profile();
    }

    // if (settings.name.contains('/create-account/')) {
    //   String email = settings.name.replaceAll('/create-account/', '');
    //   print(email);
    // screens = CreateAccountPage(email);
    // }
    return MaterialPageRoute(builder: (context) => screens);
  }
}
