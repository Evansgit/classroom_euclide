import 'package:crypto_template/Screen/FullApps/HouseWix/pages/splash_page.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/providers/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HouseWix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
