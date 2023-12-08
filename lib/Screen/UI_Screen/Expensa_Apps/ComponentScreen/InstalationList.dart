import 'package:flutter/material.dart';

class instalationList extends StatefulWidget {
  @override
  _instalationListState createState() => _instalationListState();
}

class _instalationListState extends State<instalationList> {
  @override
  String data = "";
  bool chose1 = false;
  bool chose2 = false;
  Widget build(BuildContext context) {
    void _sendDataBack(BuildContext context) {
      Navigator.pop(context, data);
    }
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:0.0),
            child: Container(
                height: 800.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/Screen/UI_Screen/Expensa_Apps/assets/img/background.png"),fit: BoxFit.cover),),
                child: Padding(
                    padding: const EdgeInsets.only(top:100.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              if(data==""){
                                data="Expense";
                              }else{
                                data="";
                              }
                              if(chose1==false){
                                chose1=true;
                              }else{
                                chose1=false;
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 12.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 65.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(12.0),topLeft: Radius.circular(12.0)),
                                      color: Colors.black26
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left:20.0,top: 0.0),
                                        child: Container(
                                            width: 245.0,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text("Expense",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400,fontSize: 18.5,),
                                                  overflow: TextOverflow.fade,),
                                              ],
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right:25.0),
                                        child: chose1?Icon(Icons.check,color: Colors.white,):Icon(Icons.check,color: Colors.transparent,),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1.4,
                                  width: double.infinity,
                                  color: Color(0xFF29638B),
                                )
                              ],
                            ),
                          ),),
                        InkWell(
                          onTap: (){
                            setState(() {
                              if(data==""){
                                data="Credit";
                              }else{
                                data="";
                              }
                              if(chose2==false){
                                chose2=true;
                              }else{
                                chose2=false;
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 12.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 65.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(12.0),topLeft: Radius.circular(12.0)),
                                      color: Colors.black26
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left:20.0,top: 0.0),
                                        child: Container(
                                            width: 245.0,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text("Credit",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400,fontSize: 18.5,),
                                                  overflow: TextOverflow.fade,),
                                              ],
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right:25.0),
                                        child: chose2?Icon(Icons.check,color: Colors.white,):Icon(Icons.check,color: Colors.transparent,),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1.4,
                                  width: double.infinity,
                                  color: Color(0xFF29638B),
                                )
                              ],
                            ),
                          ),),
                      ],
                    )
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
                              _sendDataBack(context);
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.arrow_back_ios,color: Colors.white,),
                                Text("Atras",style: TextStyle(color: Colors.white,fontSize: 16.0),)
                              ],)),
                      ),
                      Center(child: Text("Type",style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: "Popins",fontWeight: FontWeight.w600),)),
                      Stack(
                        children: <Widget>[
                          Opacity(
                              opacity: 0.5,
                              child: Image.asset("lib/Screen/UI_Screen/Expensa_Apps/assets/img/logoAppbar.png",)),
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
}
