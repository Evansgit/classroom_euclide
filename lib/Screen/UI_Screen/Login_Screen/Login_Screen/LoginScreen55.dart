import 'dart:math';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class LoginScreen55 extends StatefulWidget {
  @override
  _LoginScreen55 createState() => _LoginScreen55();
}

class _LoginScreen55 extends State<LoginScreen55> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    setStatusBarColor(Colors.transparent);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.network(
              'https://wallpaperaccess.com/full/1484361.jpg',
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: width - 145,
              bottom: height - 100,
              child: Transform.rotate(
                angle: pi / 4,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Transform.rotate(
                        angle: -pi / 4,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20, top: 25),
                          child: Text(
                            'Sign Up',
                            softWrap: true,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height - 475,
              right: width - 310,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Transform.rotate(
                  angle: (-pi / 4),
                  child: Container(
                    height: 560,
                    width: 480,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(26.0),
                          topRight: Radius.circular(40.0)),
                    ),
                    child: Transform.rotate(
                      angle: (pi / 4),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'SIGN IN',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 125.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                width: 275,
                                child: TextField(
                                  controller: emailcontroller,
                                  decoration: InputDecoration(
                                      labelText: 'Name',
                                      icon: Icon(Icons.alternate_email)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                width: 275,
                                child: TextField(
                                  controller: passcontroller,
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      icon: Icon(Icons.lock)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('SIGN IN'),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.redAccent),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
