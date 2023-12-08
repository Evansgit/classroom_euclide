import 'package:flutter/material.dart';

import 'chat_item/T1_chating_layout.dart';

class T1_chat extends StatefulWidget {
  @override
  _T1_chatState createState() => _T1_chatState();
}

class _T1_chatState extends State<T1_chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141C35),

      ///
      /// Appbar
      ///
      appBar: AppBar(
         
        elevation: 0.0,
        backgroundColor: Color(0xFF1A223E),
        centerTitle: true,
        title: Text(
          "Crypto Group",
          style: TextStyle(
              color: Colors.white, fontFamily: "Sofia", fontSize: 16.5),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.settings)),
        ],
      ),

      ///
      /// Body
      ///
      body: Column(
        children: <Widget>[
          ///
          /// ListView scroll horizontal under appbar
          ///
          Container(
            width: double.infinity,
            height: 110.0,
            color: Color(0xFF1A223E),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _card(
                    "https://images.pexels.com/photos/997472/pexels-photo-997472.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    "Alex"),
                _card(
                    "https://images.pexels.com/photos/2128807/pexels-photo-2128807.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    "Tom"),
                _card(
                    "https://images.pexels.com/photos/3482529/pexels-photo-3482529.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    "Halwey"),
                _card(
                    "https://images.pexels.com/photos/2744199/pexels-photo-2744199.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                    "Ava"),
                _card(
                    "https://images.pexels.com/photos/3598254/pexels-photo-3598254.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    "Sarah"),
                _card(
                    "https://images.pexels.com/photos/2873644/pexels-photo-2873644.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    "Swift"),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1.5,
            color: Colors.white12.withOpacity(0.1),
          ),
          SizedBox(
            height: 90.0,
          ),
          Opacity(
              opacity: 0.5,
              child: Image.asset(
                "lib/Screen/FullApps/AlliedWallet/Assets/messageAppbar.png",
                height: 115.0,
                color: Colors.white,
              )),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "No conversations yet!",
            style: TextStyle(
                fontFamily: "Sofia", color: Colors.white24, fontSize: 17.0),
          )
        ],
      ),
    );
  }

  ///
  /// Card for image profile and name
  ///
  Widget _card(String img, name) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 19.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(PageRouteBuilder(pageBuilder: (_, __, ___) => chatItem()));
        },
        child: Column(
          children: <Widget>[
            Container(
              height: 51.0,
              width: 51.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                      image: NetworkImage(
                        img,
                      ),
                      fit: BoxFit.cover),
                  color: Colors.white),
            ),
            SizedBox(
              height: 9.0,
            ),
            Text(
              name,
              style: TextStyle(fontFamily: "Sofia", color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
