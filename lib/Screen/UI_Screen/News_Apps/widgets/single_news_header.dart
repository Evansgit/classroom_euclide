import 'package:flutter/material.dart';


class SingleNewsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.only(bottom: 20.0, left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(169, 176, 185, 0.42),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.chevron_left),
            Expanded(
              child: Text(
                "Jacob Blake: Trump visits Kenosha to back police...",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Icon(
              Icons.bookmark,
              size: 20.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Icon(
              Icons.share,
              size: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
