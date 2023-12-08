import 'package:flutter/material.dart';
import 'dot_widget.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    required this.color,
    Key? key,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            DotWidget(color: color),
            SizedBox(width: 5),
            DotWidget(color: color),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            DotWidget(color: color),
            SizedBox(width: 5),
            DotWidget(color: color),
          ],
        ),
      ],
    );
  }
}
