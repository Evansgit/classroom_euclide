import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class GlassCArd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://github.com/bharat-1809/glass_kit/blob/main/example/assets/bg_1.jpg?raw=true'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GlassContainer(
            child: Center(
                child: Text(
              "Glass Card",
              style: TextStyle(fontFamily: "Sofia", fontSize: 30),
            )),
            height: 200,
            width: 350,
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.40),
                Colors.white.withOpacity(0.10),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.60),
                Colors.white.withOpacity(0.10),
                Colors.purpleAccent.withOpacity(0.05),
                Colors.purpleAccent.withOpacity(0.60),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.39, 0.40, 1.0],
            ),
            blur: 20,
            borderRadius: BorderRadius.circular(24.0),
            borderWidth: 1.0,
            elevation: 3.0,
            isFrostedGlass: true,
            shadowColor: Colors.purple.withOpacity(0.20),
          ),
        ),
      ),
    );
  }
}
