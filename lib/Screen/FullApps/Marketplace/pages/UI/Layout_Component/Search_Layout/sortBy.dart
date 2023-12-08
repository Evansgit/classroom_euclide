import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/Search_Layout/filters.dart';

class sortBy extends StatefulWidget {
  @override
  _sortByState createState() => _sortByState();
}

class _sortByState extends State<sortBy> {
  @override
  int tapvalue = 0;
  int tapvalue2 = 0;

  /// Custom Text
  var _customStyle = TextStyle(
      fontFamily: "Sofia",
      fontWeight: FontWeight.w500,
      color: Colors.black87,
      fontSize: 15.5);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Sort By",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0),
            child: Text(
              "Clear All",
              style: TextStyle(
                  color: Colors.transparent,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(new PageRouteBuilder(
                  opaque: true,
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder: (BuildContext context, _, __) {
                    return new filters();
                  },
                  transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                    return new SlideTransition(
                      child: child,
                      position: new Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                    );
                  }));
            },
            child: Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Column(
        children: <Widget>[
          _line(),
          InkWell(
            onTap: () {
              setState(() {
                if (tapvalue == 0) {
                  tapvalue++;
                } else {
                  tapvalue--;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Relevance", style: _customStyle),
                  Radio(
                    value: 1,
                    groupValue: tapvalue,
                    onChanged: null,
                  ),
                ],
              ),
            ),
          ),
          _line(),
          InkWell(
            onTap: () {
              setState(() {
                if (tapvalue2 == 0) {
                  tapvalue2++;
                } else {
                  tapvalue2--;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("New Listing", style: _customStyle),
                  Radio(
                    value: 1,
                    groupValue: tapvalue2,
                    onChanged: null,
                  ),
                ],
              ),
            ),
          ),
          _line()
        ],
      ),
    );
  }
}

Widget _line() {
  return Padding(
    padding:
        const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20.0, right: 30.0),
    child: Divider(
      height: 2.0,
      color: Colors.black54,
    ),
  );
}
