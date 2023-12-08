import 'package:crypto_template/Screen/FullApps/ChatApp/pages/home/home_page.dart';
import 'package:crypto_template/Screen/FullApps/ChatApp/pages/message_page.dart';
import 'package:crypto_template/Screen/FullApps/ChatApp/pages/story/story_page.dart';
import 'package:flutter/material.dart';

class MainWa extends StatelessWidget {
  const MainWa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageChatting(),
      routes: {
        '/message': (context) => MessagePage(),
        '/story': (context) => StoryPage(),
      },
    );
  }
}
