import 'package:flutter/material.dart';

import 'AuthAPI/Local_Auth.dart';

class FacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Face ID",
            style: TextStyle(fontFamily: "Sofia"),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildHeader(),
                SizedBox(height: 32),
                buildAvailability(context),
                SizedBox(height: 24),
                buildAuthenticate(context),
              ],
            ),
          ),
        ),
      );

  Widget buildAvailability(BuildContext context) => buildButton(
        text: 'Check Availability',
        icon: Icons.event_available,
        onClicked: () async {
          final isAvailable = await LocalAuthApi.hasBiometrics();

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                'Check Availability',
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 19,
                    fontWeight: FontWeight.w700),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  buildText('Face ID', isAvailable),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok'),
                )
              ],
            ),
          );
        },
      );

  Widget buildText(String text, bool checked) => Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            checked
                ? Icon(Icons.check, color: Colors.green, size: 24)
                : Icon(Icons.close, color: Colors.red, size: 24),
            const SizedBox(width: 12),
            Text(text,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w400)),
          ],
        ),
      );

  Widget buildAuthenticate(BuildContext context) => buildButton(
        text: 'Authenticate',
        icon: Icons.lock_open,
        onClicked: () async {
          final isAuthenticated = await LocalAuthApi.authenticate();

          if (isAuthenticated) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
        },
      );

  Widget buildButton({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50),
        ),
        icon: Icon(icon, size: 23),
        label: Text(
          text,
          style: TextStyle(fontSize: 18, fontFamily: "Sofia"),
        ),
        onPressed: onClicked,
      );

  Widget buildHeader() => Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              final colors = [Colors.blueAccent, Colors.blue];

              return RadialGradient(colors: colors).createShader(bounds);
            },
            child: Icon(Icons.face_retouching_natural,
                size: 120, color: Colors.white),
          ),
        ],
      );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 48),
                buildLogoutButton(context)
              ],
            ),
          ),
        ),
      );

  Widget buildLogoutButton(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50),
        ),
        child: Text(
          'Logout',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => FacePage()),
        ),
      );
}
