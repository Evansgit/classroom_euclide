import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class SampleLanguage extends StatefulWidget {
  @override
  _SampleLanguageState createState() => _SampleLanguageState();
}

class _SampleLanguageState extends State<SampleLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ('title').tr(),
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w800,
                  fontSize: 24.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              ('lorem').tr(),
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w300,
                  fontSize: 19.0),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              ('lorem2').tr(),
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w300,
                  fontSize: 19.0),
            ),
          ],
        ),
      ),
    );
  }
}
