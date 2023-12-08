import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'core.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  ));
  runApp(MyAppWorkout());
}

class MyAppWorkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Workout Gym',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.white,
        textTheme: TextTheme(
          titleMedium: TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: Duration(milliseconds: 230),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
