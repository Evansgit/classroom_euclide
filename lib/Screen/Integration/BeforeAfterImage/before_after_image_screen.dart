import 'package:flutter/material.dart';

import '../../../Library/beforeAfter/BeforeAfter.dart';

class BeforeAfterImageScreen extends StatefulWidget {
  static String tag = '/BeforeAfterImageScreen';

  @override
  BeforeAfterImageScreenState createState() => BeforeAfterImageScreenState();
}

class BeforeAfterImageScreenState extends State<BeforeAfterImageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "After Before Image",
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: BeforeAfter(
          beforeImage: Image.asset('assets/images/after.jpg'),
          afterImage: Image.asset('assets/images/before.jpg'),
        ),
      ),
    );
  }
}
