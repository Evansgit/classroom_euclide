import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class OnBoarding50 extends StatefulWidget {
  OnBoarding50({Key? key}) : super(key: key);

  @override
  State<OnBoarding50> createState() => _OnBoarding50State();
}

class _OnBoarding50State extends State<OnBoarding50>
    with SingleTickerProviderStateMixin {
  int initialValue = 0;
  int progressIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    setStatusBarColor(Colors.transparent);
    super.initState();
    pageController = PageController(initialPage: 0);
    progressIndex = 0;
  }

  double containerWidth() {
    return (150 / modal.length) * (progressIndex + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              initialValue = value;
              progressIndex = value;
              debugPrint("$value");
            }),
            children: modal.map((e) {
              return Stack(
                children: [
                  //Image
                  Image.network(
                    e.image.toString(),
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.35),
                    colorBlendMode: BlendMode.darken,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  // commonCachedNetworkImage(
                  //   e.image.toString(),
                  //   fit: BoxFit.cover,
                  //   color: Colors.black.withOpacity(0.35),
                  //   // colorBlendMode: BlendMode.darken,
                  //   width: MediaQuery.of(context).size.width,
                  //   height: MediaQuery.of(context).size.height,
                  // ),

                  // DataEntry
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).viewPadding.top + 16),
                          Text((e.heading ?? ""),
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(e.title.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w800)),
                            SizedBox(height: 16),
                            Text(e.subtitle.toString(),
                                style: TextStyle(color: Colors.white)),
                            SizedBox(height: 80),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }).toList(),
          ),
          //Determinate LinearProgressIndicator & FAB
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                    AnimatedContainer(
                      duration: 1.seconds,
                      width: containerWidth(),
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                  ],
                ),
                // Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 50,
                  width: 50,
                  child: InkWell(
                    onTap: () {
                      if (initialValue < 2) {
                        setState(
                            () => pageController.jumpToPage(initialValue + 1));
                      } else {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AWelcomeScreen()));
                      }
                    },
                    child: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.white),
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

class AWalkThroughModel {
  String? heading;
  String? title;
  String? subtitle;
  String? image;
  double? progress;

  AWalkThroughModel({
    this.heading,
    this.title,
    this.subtitle,
    this.image,
    this.progress,
  });
}

final List<AWalkThroughModel> modal = [
  AWalkThroughModel(
    heading: '',
    title: 'Mountain',
    subtitle: 'Lorem ipsum sir amet  color daxian with palaku wotop ipsum ',
    image:
        'https://images.unsplash.com/photo-1483197452165-7abc4b248905?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
    progress: 0.33,
  ),
  AWalkThroughModel(
    heading: '',
    title: 'Mountain',
    subtitle: 'Lorem ipsum sir amet  color daxian with palaku wotop ipsum ',
    image:
        'https://images.unsplash.com/photo-1475066392170-59d55d96fe51?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    progress: 0.66,
  ),
  AWalkThroughModel(
    heading: '',
    title: 'Mountain',
    subtitle: 'Lorem ipsum sir amet  color daxian with palaku wotop ipsum ',
    image:
        'https://images.pexels.com/photos/13010312/pexels-photo-13010312.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
    progress: 1,
  ),
];
