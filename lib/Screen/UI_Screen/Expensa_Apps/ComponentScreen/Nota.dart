import 'package:flutter/material.dart';

class nota extends StatefulWidget {
  @override
  _notaState createState() => _notaState();
}

class _notaState extends State<nota> {
  @override
  TextEditingController textFieldController = TextEditingController();
  Widget build(BuildContext context) {
  final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:0.0),
            child: Container(
                height: 800.0,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:90.0),
                  child: Container(
                    color: Colors.white,
                    height: double.infinity,
                    width: double.infinity,
                    child: Theme(
                      data: ThemeData(
                          hintColor: Colors.transparent
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: textFieldController,
                          autofocus: true,
                          maxLines: 10,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Notas",
                            hintStyle: TextStyle(color: Colors.black)
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),
          ),
          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
          Container(
            height: 200.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: statusBarHeight),
                  height: 58.0 + statusBarHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5.0,
                            spreadRadius: 1.0
                        )
                      ],
                      color: Color(0xFF29303C)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: InkWell(
                            onTap: (){
                              Navigator.pop(context, "");
                            },
                            child: Row(
                              children: <Widget>[
                                Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 16.0),)
                              ],)),
                      ),
                      Center(child: Text("Nota",style: TextStyle(color: Colors.white,fontSize: 19.0,fontFamily: "Popins",fontWeight: FontWeight.w600),)),
                      Stack(
                        children: <Widget>[
                         InkWell(
                           onTap: (){
                             _sendDataBack(context);
                           },
                           child: Padding(
                             padding: const EdgeInsets.only(right:15.0),
                             child: Text("Done",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                           ),
                         )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _sendDataBack(BuildContext context) {
    String textToSendBack = textFieldController.text;
    Navigator.pop(context, textToSendBack);
  }
}
