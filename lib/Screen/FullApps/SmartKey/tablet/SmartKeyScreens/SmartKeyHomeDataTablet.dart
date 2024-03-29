import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/tablet/SmartKeyScreens/SmartKeyCategoryTablet.dart';
import 'package:crypto_template/Screen/FullApps/SmartKey/Widget/SmartKeyBtn.dart';

import 'SmartKeyBattelTablet.dart';

class SmartKeyHomeDateTablet extends StatefulWidget {
  SmartKeyHomeDateTablet({Key? key}) : super(key: key);

  @override
  _SmartKeyHomeDateTabletState createState() => _SmartKeyHomeDateTabletState();
}

class _SmartKeyHomeDateTabletState extends State<SmartKeyHomeDateTablet>
    with TickerProviderStateMixin {
  double xoffSet = 0;
  double yoffSet = 0;
  double angle = 0;

  bool isOpen = false;
  bool isPlaying = false;

  Widget appBar() {
    return AppBar(
      leading: null,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text("SmartKey"),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.translate),
            onPressed: () {
              // showDialog(
              //     context: context,
              //     builder: (_) {
              //       return ShowLanguageDialog();
              //     });
            })
      ],
    );
  }

  Widget playQuiz() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SmartKeyBtn(
          btnwidth: MediaQuery.of(context).size.width / 1.2,
          title: 'Play Quiz',
          bg: Colors.white,
          titlecolor: Colors.black,
          route: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SmartKeyCategoryTablet(),
              ),
            );
          },
        ));
  }

  Widget playBattle() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SmartKeyBtn(
          btnwidth: MediaQuery.of(context).size.width / 1.2,
          title: 'Play Battle',
          bg: Colors.white,
          titlecolor: Colors.black,
          route: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SamrtKeyBattleTablet(),
              ),
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4Transform()
          .translate(x: xoffSet, y: yoffSet)
          .rotate(angle)
          .matrix4,
      duration: Duration(milliseconds: 350),
      child: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx > 0) {
            setState(() {
              xoffSet = 150;
              yoffSet = 150;
              angle = -0.2;
              isOpen = true;
            });
          } else {
            setState(() {
              xoffSet = 0;
              yoffSet = 0;
              angle = 0;
              isOpen = false;
            });
          }
        },
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [smartkey3, smartkey2],
                  stops: [0.1, 0.8]),
              borderRadius: isOpen
                  ? BorderRadius.circular(20)
                  : BorderRadius.circular(0)),
          child: Column(
            children: <Widget>[
              appBar(),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Center(
                  child: SvgPicture.asset(
                    "assets/images/logoApps.png",
                    width: 130,
                    height: 130,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 85.0,
              ),
              playQuiz(),
              playBattle(),
            ],
          ),
        ),
      ),
    );
  }
}
