import 'package:flutter/material.dart';

class HomePageTemplate extends StatelessWidget {
  final int? activePage;
  final String? imagePath;
  final String? title;

  HomePageTemplate({this.activePage, this.imagePath, this.title});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    this.imagePath!,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            constraints: BoxConstraints(minWidth: _size.height * 0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  this.title!,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: "Sofia",
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child:
                        Icon(Icons.arrow_forward_ios, color: Colors.black38)),
                SizedBox(
                  height: 30.0,
                ),
                // PrimaryButton(
                //   text: "Create Account",
                //   onPressed: () {
                //     Helper.nextPage(context, Register());
                //   },
                // )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
