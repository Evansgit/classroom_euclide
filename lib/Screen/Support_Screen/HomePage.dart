import 'package:flutter/material.dart';
import '../Template_Material/screen/HomePage_Material.dart';
import '../Animation/AnimationList.dart';
import '../FullApps/FullAppsList.dart';

import 'package:nb_utils/nb_utils.dart';
import '../Integration/IntegrationList.dart';
import '../UI_Screen/UIScreenList.dart';

class HomeNavigationPage extends StatefulWidget {
  HomeNavigationPage({Key? key}) : super(key: key);

  @override
  _HomeNavigationPageState createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  final tabs = [
    UIScreenList(),
    IntegrationList(),
    FullAppsList(),
    AnimationList(),
    HomePageMaterial(),
  ];

  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            tabs[currentIndex],
            Positioned(
              left: 0,
              right: 0,
              bottom: 9,
              child: Container(
                      height: 75.0,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            blurRadius: 10.0),
                      ]),
                      child: BottomNavigationBar(
                        selectedItemColor: Color(0xFF47597E),
                        unselectedItemColor: Color(0xFF989BA1),
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Color(0xffF6F7F8),
                        elevation: 1.0,
                        currentIndex: currentIndex,
                        items: [
                          BottomNavigationBarItem(
                              activeIcon: FTActiveIconWidget(
                                icon: Image.asset(
                                  "assets/icon/Home2.png",
                                  height: 29.0,
                                ),
                              ),
                              icon: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Image.asset(
                                    "assets/icon/Home.png",
                                    height: 26.0,
                                  ),
                                ),
                              ),
                              label: ''),
                          BottomNavigationBarItem(
                              activeIcon: FTActiveIconWidget(
                                icon: Image.asset(
                                  "assets/icon/Document.png",
                                  height: 29.0,
                                ),
                              ),
                              icon: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Image.asset(
                                    "assets/icon/Document2.png",
                                    height: 26.0,
                                  ),
                                ),
                              ),
                              label: ''),
                          BottomNavigationBarItem(
                              activeIcon: FTActiveIconWidget(
                                icon: Image.asset(
                                  "assets/icon/Gallery.png",
                                  height: 31.0,
                                ),
                              ),
                              icon: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Image.asset(
                                    "assets/icon/Gallery2.png",
                                    height: 30.0,
                                  ),
                                ),
                              ),
                              label: ''),
                          BottomNavigationBarItem(
                              activeIcon: FTActiveIconWidget(
                                icon: Image.asset(
                                  "assets/icon/Activity.png",
                                  height: 29.0,
                                ),
                              ),
                              icon: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Image.asset(
                                    "assets/icon/Activity2.png",
                                    height: 26.0,
                                  ),
                                ),
                              ),
                              label: ''),
                          BottomNavigationBarItem(
                              activeIcon: FTActiveIconWidget(
                                icon: Image.asset(
                                  "assets/icon/PapperPlus.png",
                                  height: 29.0,
                                ),
                              ),
                              icon: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Opacity(
                                    opacity: 0.7,
                                    child: Image.asset(
                                      "assets/icon/PapperPlus2.png",
                                      height: 26.0,
                                    ),
                                  )),
                              label: ''),
                        ],
                        onTap: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ))
                  .cornerRadiusWithClipRRect(35)
                  .paddingOnly(left: 16, right: 16, bottom: 10),
            )
          ],
        ),
      ),
    );
  }
}

class FTActiveIconWidget extends StatelessWidget {
  final Widget icon;

  FTActiveIconWidget({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 2,
            width: 24.0,
            decoration: BoxDecoration(
              color: Color(0xFF39AFFD),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          icon,
          // Text(title, style: TextStyle(fontSize: 12, color: Color(0xFF5AB1F9))),
        ],
      ),
    );
  }
}
