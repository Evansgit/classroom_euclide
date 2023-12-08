import 'package:crypto_template/Screen/FullApps/Workout/core.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    required this.onSelected,
    required this.items,
    Key? key,
  }) : super(key: key);

  final Function(int) onSelected;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: items
              .map((item) => buildItem(
                  onTap: () {
                    onSelected(items.indexOf(item));
                  },
                  text: item,
                  isActive: items.indexOf(item) == true))
              .toList()),
    );
  }

  Widget buildItem({
    required String text,
    bool isActive = false,
    final void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: !isActive ? null : Border.all(color: kFirstColor),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
