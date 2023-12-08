library lite_rolling_switch;

import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class LiteRollingSwitchCustom extends StatefulWidget {
  @required
  final bool value;
  @required
  final Function(bool?)? onChanged;
  final String textOff;
  final String textOn;
  final Color colorOn;
  final Color colorOff;
  final double textSize;
  final Duration animationDuration;
  final IconData iconOn;
  final IconData iconOff;
  final Function? onTap;
  final Function? onDoubleTap;
  final Function? onSwipe;

  LiteRollingSwitchCustom(
      {this.value = false,
      this.textOff = "Off",
      this.textOn = "On",
      this.textSize = 14.0,
      this.colorOn = Colors.green,
      this.colorOff = Colors.red,
      this.iconOff = Icons.flag,
      this.iconOn = Icons.check,
      this.animationDuration = const Duration(milliseconds: 600),
      this.onTap,
      this.onDoubleTap,
      this.onSwipe,
      this.onChanged});

  @override
  _RollingSwitchState createState() => _RollingSwitchState();
}

class _RollingSwitchState extends State<LiteRollingSwitchCustom>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  double value = 0.0;

  bool? turnState;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        lowerBound: 0.0,
        upperBound: 1.0,
        duration: widget.animationDuration);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    animationController.addListener(() {
      setState(() {
        value = animation.value;
      });
    });
    turnState = widget.value;
    if (turnState!) {
      animationController.animateTo(1, duration: Duration(seconds: 0));
    }
  }

  @override
  Widget build(BuildContext context) {
    Color? transitionColor = Color.lerp(widget.colorOff, widget.colorOn, value);

    return GestureDetector(
      onDoubleTap: () {
        _action();
        if (widget.onDoubleTap != null) widget.onDoubleTap!();
      },
      onTap: () {
        _action();
        if (widget.onTap != null) widget.onTap!();
      },
      onPanEnd: (details) {
        _action();
        if (widget.onSwipe != null) widget.onSwipe!();
        //widget.onSwipe();
      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: 130,
        decoration: BoxDecoration(
            color: transitionColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  blurRadius: 1.0,
                  spreadRadius: 2.2)
            ]),
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(10 * value, 0), //original
              child: Opacity(
                opacity: (1 - value).clamp(0.0, 1.0),
                child: Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  height: 20,
                  child: Text(
                    widget.textOff,
                    style: TextStyle(
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.bold,
                        fontSize: widget.textSize),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(10 * (1 - value), 0), //original
              child: Opacity(
                opacity: value.clamp(0.0, 1.0),
                child: Container(
                  padding: EdgeInsets.only(/*top: 10,*/ left: 5),
                  alignment: Alignment.centerLeft,
                  height: 20,
                  child: Text(
                    widget.textOn,
                    style: TextStyle(
                        color: Color(0xFF0979FF),
                        fontWeight: FontWeight.bold,
                        fontSize: widget.textSize),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(80 * value, 0),
              child: Transform.rotate(
                angle: lerpDouble(0, 2 * pi, value)!,
                child: Container(
                  height: 20,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Opacity(
                          opacity: (1 - value).clamp(0.0, 1.0),
                          child: Text(
                            widget.textOn,
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Color(0xFF0979FF),
                                fontWeight: FontWeight.bold,
                                fontSize: widget.textSize),
                          ),
                        ),
                      ),
                      Center(
                          child: Opacity(
                        opacity: value.clamp(0.0, 1.0),
                        child: Text(
                          widget.textOff,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Color(0xFF0979FF),
                              fontWeight: FontWeight.bold,
                              fontSize: widget.textSize),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _action() {
    _determine(changeState: true);
  }

  _determine({bool changeState = false}) {
    setState(() {
      if (changeState) turnState = !turnState!;
      turnState!
          ? animationController.forward()
          : animationController.reverse();

      widget.onChanged!(turnState);
    });
  }
}
