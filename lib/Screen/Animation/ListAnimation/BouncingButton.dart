import 'package:flutter/material.dart';
import 'package:bouncing_widget/bouncing_widget.dart';

class BouncingButton extends StatefulWidget {
  @override
  _BouncingButtonState createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<BouncingButton>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;
  double _scaleFactor = 1.0;

  _onPressed(BuildContext context) {
    print("CLICK");
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Scaffold(
      appBar: AppBar(
        title: Text("Bouncing Button"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Press Button',
            style: TextStyle(color: Colors.grey[400], fontSize: 20.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: GestureDetector(
              onTapDown: _tapDown,
              onTapUp: _tapUp,
              child: Transform.scale(
                scale: _scale,
                child: _animatedButton(),
              ),
            ),
          ),
          BouncingWidget(
            scaleFactor: _scaleFactor,
            onPressed: () => _onPressed(context),
            stayOnBottom: true,
            child: Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  'Stay on bottom',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8185E2),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          BouncingWidget(
            scaleFactor: _scaleFactor,
            onPressed: () {
              _onPressed(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.add),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          BouncingWidget(
            scaleFactor: _scaleFactor,
            onPressed: () => _onPressed(context),
            child: Text(
              "Hello !",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .5,
            child: Slider(
              activeColor: Colors.amber,
              inactiveColor: Colors.amberAccent,
              min: -5,
              max: 5,
              value: _scaleFactor,
              onChanged: (double newValue) {
                setState(() {
                  _scaleFactor = newValue;
                });
              },
            ),
          ),
          Center(
            child: Text(
              "Scale factor = ${num.parse(_scaleFactor.toStringAsFixed(2))}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _animatedButton() {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 12.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          color: Colors.deepPurpleAccent),
      child: Center(
        child: Text(
          'Click me',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
