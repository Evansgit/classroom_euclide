import 'package:flutter/material.dart';

import 'package:im_animations/im_animations.dart';

class ProfileAnimation extends StatefulWidget {
  ProfileAnimation({Key? key}) : super(key: key);

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Animation"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Profile Animation',
              style: TextStyle(color: Colors.grey[400], fontSize: 20.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "Rotate",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Sonar(
                radius: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images2.imgbox.com/90/0d/GvIGrR2E_o.jpg'),
                  radius: 100,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "Sonar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ColorSonar(
              // wavesDisabled: true,
              // waveMotion: WaveMotion.synced,
              contentAreaRadius: 48.0,
              waveFall: 15.0,
              // waveMotionEffect: Curves.elasticIn,
              waveMotion: WaveMotion.synced,
              // duration: Duration(seconds: 5),
              child: CircleAvatar(
                radius: 48.0,
                backgroundImage: NetworkImage(
                    'https://images2.imgbox.com/90/0d/GvIGrR2E_o.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "Heart Beat",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            HeartBeat(
              // duration: Duration(seconds: 5),
              child: CircleAvatar(
                radius: 48.0,
                backgroundImage: NetworkImage(
                    'https://images2.imgbox.com/90/0d/GvIGrR2E_o.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "Heart Beat",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Fade(
              // duration: Duration(seconds: 5),
              child: CircleAvatar(
                radius: 48.0,
                backgroundImage: NetworkImage(
                    'https://images2.imgbox.com/90/0d/GvIGrR2E_o.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "Rotate",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Rotate(
              // duration: Duration(seconds: 5),
              child: CircleAvatar(
                radius: 48.0,
                backgroundImage: NetworkImage(
                    'https://images2.imgbox.com/90/0d/GvIGrR2E_o.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
