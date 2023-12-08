import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';
import 'package:crypto_template/Screen/FullApps/Vpn/mobile/Screens/VpnHomeMobile.dart';

class VpnIntroMobile extends StatefulWidget {
  VpnIntroMobile({Key? key}) : super(key: key);

  @override
  _VpnIntroStateMobile createState() => _VpnIntroStateMobile();
}

class _VpnIntroStateMobile extends State<VpnIntroMobile> {
  String intro1 = "Lorem Ipsum is simply";
  String intro2 = "Lorem Ipsum is simply";
  String intro3 = "Lorem Ipsum is simply";
  String introdesc1 =
      "standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type";
  String introdesc2 =
      "standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type";
  String introdesc3 =
      "standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type";
  final _controller = PageController();
  double? bottompadding;
  int currentpage = 0;

  final _images = [
    "assets/images/vpn1.png",
    "assets/images/vpn2.png",
    "assets/images/vpn3.png",
  ];

  late List<String> _introsubtext;
  late List<String> _introtitle;

  @override
  void initState() {
    super.initState();
    _introtitle = [intro1, intro2, intro3];
    _introsubtext = [introdesc1, introdesc2, introdesc3];
  }

  void setIntroSlider() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => VpnHomeMobile(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      bottompadding = (MediaQuery.of(context).size.height / 2) - 50;
    });

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        
      ),
      child: Scaffold(
        body: PageView(
          controller: _controller,
          onPageChanged: (int pageno) {
            setState(() {
              currentpage = pageno;
            });
          },
          children: List.generate(3, (index) {
            return Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: new BoxDecoration(
                    // color: Colors.amber,
                    // gradient: vpntopgradient,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 30.0),
                    height: MediaQuery.of(context).size.height / 2,
                    child: Center(
                        child: Image.asset(
                      _images[currentpage],
                    ))),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 25.0, left: 15, right: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _introtitle[currentpage],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge!.merge(
                              TextStyle(
                                  color: vpn33,
                                  letterSpacing: 0.8,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          _introsubtext[currentpage],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium!.merge(
                              TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0.5,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5)),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              setIconSymbol(0),
                              SizedBox(width: 5),
                              setIconSymbol(1),
                              SizedBox(width: 5),
                              setIconSymbol(2),
                            ]),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("==test--$currentpage");

                            if (currentpage < 2) {
                              _controller.jumpToPage(currentpage + 1);
                            } else {
                              setIntroSlider();
                            }
                          },
                          child: Container(
                            decoration: vpncirculargradient_box,
                            width: double.maxFinite,
                            margin:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Center(
                                child: Text(
                              "Next",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .merge(TextStyle(color: Colors.white)),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget setIconSymbol(int index) {
    return CircleAvatar(
      radius: 7,
      backgroundColor: vpn33,
      child: CircleAvatar(
        radius: 6,
        backgroundColor: currentpage == index ? vpn33 : Colors.white,
      ),
    );
  }
}
