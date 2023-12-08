import 'package:flutter/material.dart';

class OnBoarding27 extends StatefulWidget {
  const OnBoarding27({Key? key}) : super(key: key);

  @override
  _OnBoarding27State createState() => _OnBoarding27State();
}

class _OnBoarding27State extends State<OnBoarding27> {
  PageController? _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, left: 20.0, top: 80.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "View",
                          style: TextStyle(
                              fontSize: 25, color: Colors.grey.shade500),
                        ),
                        Text(
                          "Mountain",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: _buildIndicator(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: MaterialButton(
                          height: 50,
                          minWidth: 50,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          onPressed: () {
                            _pageController!.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease);
                            setState(() {});
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  onPageChanged: (int page) {
                    setState(() {
                      currentIndex = page;
                    });
                  },
                  controller: _pageController,
                  children: <Widget>[
                    Image.network(
                      'https://images.unsplash.com/photo-1454496522488-7a8e488e8606?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1752&q=80',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1554629947-334ff61d85dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1574950578143-858c6fc58922?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1534067783941-51c9c23ecefd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1505764761634-1d77b57e1966?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ])),
      ),
    );
  }

  _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 50 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.grey.shade500,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 5; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
