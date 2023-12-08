import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/widgets/home_page_template.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: PageView(
          controller: controller,
          // Since all pages follow same pattern, let's make a template for them
          children: [
            HomePageTemplate(
              activePage: currentPage,
              title: "Find best room on trevatel apps",
              imagePath:
                  "lib/Screen/UI_Screen/Hotel_Apps/assets/images/page3.jpg",
            ),
            HomePageTemplate(
              activePage: currentPage,
              title: "Cheapest room Travel apps",
              imagePath:
                  "lib/Screen/UI_Screen/Hotel_Apps/assets/images/page2.jpg",
            ),
            HomePageTemplate(
              activePage: currentPage,
              title: "Easy to find near hotel",
              imagePath:
                  "lib/Screen/UI_Screen/Hotel_Apps/assets/images/page1.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
