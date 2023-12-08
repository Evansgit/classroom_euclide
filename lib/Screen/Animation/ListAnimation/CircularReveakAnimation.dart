import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

class CircularRevealAnimationscreen extends StatefulWidget {
  @override
  _CircularRevealAnimationscreenState createState() =>
      _CircularRevealAnimationscreenState();
}

class _CircularRevealAnimationscreenState
    extends State<CircularRevealAnimationscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRA Demo"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 12),
                MaterialButton(
                  child: Text("show reveal image dialog"),
                  onPressed: () => showRevealImageDialog(context),
                  color: Colors.red,
                ),
                SizedBox(height: 12),
                MaterialButton(
                  child: Text("show reveal text dialog"),
                  onPressed: () => showRevealTextDialog(context),
                  color: Colors.amber,
                ),
                SizedBox(height: 12),
                MaterialButton(
                  child: Text("show / hide image"),
                  onPressed: () {
                    if (animationController.status == AnimationStatus.forward ||
                        animationController.status ==
                            AnimationStatus.completed) {
                      animationController.reverse();
                    } else {
                      animationController.forward();
                    }
                  },
                  color: Colors.yellow,
                ),
                SizedBox(height: 12),
                CircularRevealAnimation(
                  child: Image.asset(
                    'assets/images/boarding1.png',
                    width: 300,
                    height: 300,
                  ),
                  animation: animation,
//                centerAlignment: Alignment.centerRight,
                  centerOffset: Offset(130, 100),
//                minRadius: 12,
//                maxRadius: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showRevealImageDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Label",
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Image.asset('assets/images/boarding2.png'),
            padding: const EdgeInsets.all(12.0),
            margin: EdgeInsets.only(top: 50, left: 12, right: 12, bottom: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return CircularRevealAnimation(
          child: child,
          animation: anim1,
          centerAlignment: Alignment.bottomCenter,
        );
      },
    );
  }

  void showRevealTextDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Label",
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, anim1, anim2) {
        return AlertDialog(
          title: Text("Title of the dialog"),
          content: Text(
              "Content of the dialog. Content of the dialog. Content of the dialog. Content of the dialog."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return CircularRevealAnimation(
          child: child,
          animation: anim1,
          centerAlignment: Alignment.center,
        );
      },
    );
  }
}
