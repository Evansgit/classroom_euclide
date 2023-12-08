import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class DrawerAnimationScreem extends StatefulWidget {
  DrawerAnimationScreem({Key? key}) : super(key: key);

  @override
  _DrawerAnimationScreemState createState() => _DrawerAnimationScreemState();
}

class _DrawerAnimationScreemState extends State<DrawerAnimationScreem>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExampleHiddenDrawer(),
                    ),
                  );
                },
                child: Text(
                  "Default Example",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExampleCustomMenu()),
                  );
                },
                child: Text(
                  "Custom Menu Drawer",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExampleCustomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleHiddenDrawer(
      menu: Menu(),
      screenSelectedBuilder: (position, controller) {
        Widget? screenCurrent;
        switch (position) {
          case 0:
            screenCurrent = Screen1();
            break;
          case 1:
            screenCurrent = Screen2();
            break;
        }

        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                controller.toggle();
              },
            ),
          ),
          body: screenCurrent,
        );
      },
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late SimpleHiddenDrawerController _controller;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _controller = SimpleHiddenDrawerController.of(context);
    _controller.addListener(() {
      if (_controller.state == MenuState.open) {
        _animationController.forward();
      }

      if (_controller.state == MenuState.closing) {
        _animationController.reverse();
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.cyan,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Image.network(
              'https://wallpaperaccess.com/full/529044.jpg',
              fit: BoxFit.cover,
            ),
          ),
          FadeTransition(
            opacity: _animationController,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 200.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          _controller.setSelectedMenuPosition(0);
                        },
                        child: Text(
                          "Menu 1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          _controller.setSelectedMenuPosition(1);
                        },
                        child: Text(
                          "Menu 2",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Screen 1",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
            ElevatedButton(
              child: Text('Toggle'),
              onPressed: () {
                SimpleHiddenDrawerController.of(context).toggle();
              },
            )
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text("Screen 2",
            style: TextStyle(color: Colors.white, fontSize: 30.0)),
      ),
    );
  }
}

class ExampleHiddenDrawer extends StatelessWidget {
  final List<ScreenHiddenDrawer> itemList = [
    ScreenHiddenDrawer(
      ItemHiddenMenu(
        name: "Screen 1",
        colorLineSelected: Colors.teal,
        baseStyle:
            TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25.0),
        selectedStyle: TextStyle(color: Colors.teal),
      ),
      Screen1(),
    ),
    ScreenHiddenDrawer(
      ItemHiddenMenu(
        name: "Screen 2",
        colorLineSelected: Colors.orange,
        baseStyle:
            TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25.0),
        selectedStyle: TextStyle(color: Colors.orange),
        onTap: () {
          print("Click item");
        },
      ),
      Screen2(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      initPositionSelected: 0,
      screens: itemList,
      backgroundColorMenu: Colors.cyan,
      slidePercent: 50,
      //  typeOpen: TypeOpen.FROM_RIGHT,
      //    enableScaleAnimin: true,
      //    enableCornerAnimin: true,
      //    slidePercent: 80.0,
      //    verticalScalePercent: 80.0,
      //    contentCornerRadius: 10.0,
      //    iconMenuAppBar: Icon(Icons.menu),
      //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    withAutoTittleName: true,
      //    styleAutoTittleName: TextStyle(color: Colors.red),
      //    actionsAppBar: <Widget>[],
      //    backgroundColorContent: Colors.blue,
      //    backgroundColorAppBar: Colors.blue,
      //    elevationAppBar: 4.0,
      //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
      //    enableShadowItensMenu: true,
      //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    withShadow: true,
      //   boxShadow: [
      //     new BoxShadow(
      //       color: Colors.purple,
      //       offset: const Offset(0.0, 5.0),
      //       blurRadius: 10,
      //       spreadRadius: 5.0,
      //     ),
      // ],
    );
  }
}
