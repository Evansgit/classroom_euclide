import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0, backgroundColor: Theme.of(context).primaryColor,
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: onClicked,
      );
}
