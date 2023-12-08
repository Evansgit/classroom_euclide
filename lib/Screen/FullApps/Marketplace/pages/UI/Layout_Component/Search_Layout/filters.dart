import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/Search_Layout/categoryFilter.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/Search_Layout/search_layout.dart';
import 'package:crypto_template/Screen/FullApps/Marketplace/pages/UI/Layout_Component/Search_Layout/sortBy.dart';

class filters extends StatefulWidget {
  @override
  _filtersState createState() => _filtersState();
}

class _filtersState extends State<filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Filters",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0),
            child: Text(
              "Clear All",
              style: TextStyle(
                  color: Colors.blueAccent,
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
                    return new searchLayout();
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _line(),
            _item("Sort by", "Relevance", () {
              Navigator.of(context).pushReplacement(new PageRouteBuilder(
                  opaque: true,
                  transitionDuration: const Duration(milliseconds: 400),
                  pageBuilder: (BuildContext context, _, __) {
                    return new sortBy();
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
            }),
            _line(),
            _item("Category", "All", () {
              Navigator.of(context).pushReplacement(new PageRouteBuilder(
                  opaque: true,
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder: (BuildContext context, _, __) {
                    return new categoryFilter();
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
            }),
            _line(),
            Padding(
              padding:
                  const EdgeInsets.only(top: 400.0, left: 40.0, right: 40.0),
              child: Container(
                height: 40.0,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Center(
                  child: Text(
                    "Apply",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _line() {
  return Padding(
    padding:
        const EdgeInsets.only(top: 21.0, bottom: 20.0, left: 30.0, right: 30.0),
    child: Divider(
      height: 2.0,
      color: Colors.black54,
    ),
  );
}

Widget _item(String title, String function, GestureTapCallback tap) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              fontSize: 16.5),
        ),
        InkWell(
          onTap: tap,
          child: Text(function),
        ),
      ],
    ),
  );
}
