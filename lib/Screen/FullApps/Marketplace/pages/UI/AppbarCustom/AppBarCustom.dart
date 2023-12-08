import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/Search_Layout/search_layout.dart';

class AppbarGradient extends StatefulWidget {
  @override
  _AppbarGradientState createState() => _AppbarGradientState();
}

class _AppbarGradientState extends State<AppbarGradient> {
  String CountNotice = "4";

  /// Build Appbar in layout home
  @override
  Widget build(BuildContext context) {
    /// Create responsive height and padding
    final MediaQueryData media = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    /// Create component in appbar
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: 58.0 + statusBarHeight,
      width: double.infinity,
      decoration: BoxDecoration(

          /// gradient in appbar
          gradient: LinearGradient(
              colors: [
                const Color(0xFFA3BDED),
                const Color(0xFF6991C7),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp)),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new searchLayout()));
        },
        child: Container(
          margin: EdgeInsets.only(
              left: media.padding.left + 25,
              right: media.padding.left + 25,
              bottom: 10.0,
              top: 5.0),
          height: 57.0,
          width: 222.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              shape: BoxShape.rectangle),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
              ),
              Text(
                "Search",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w500,
                    color: Colors.black45,
                    fontSize: 16.0,
                    letterSpacing: 1.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
