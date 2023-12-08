import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
  
import 'package:crypto_template/Library/Constant/SmartKitColor.dart';

import 'SmartKeyResultTablet.dart';

class SmartKeyPlayTablet extends StatefulWidget {
  SmartKeyPlayTablet({Key? key}) : super(key: key);

  @override
  _SmartKeyPlayTabletState createState() => _SmartKeyPlayTabletState();
}

class _SmartKeyPlayTabletState extends State<SmartKeyPlayTablet>
    with SingleTickerProviderStateMixin {
  int queIndex = 0, level_coin = 6, correctQuestion = 6, inCorrectQuestion = 4;

  String? curQue,
      optionA,
      optionB,
      optionC,
      optionD,
      optionE,
      rightAns,
      userSelected;
  bool loading = true, errorExist = false;
  int score = 0;
  bool isCheckAns = false;
  late AnimationController _animationController;
  int levelNo = 1;
  int _curTime = 60;
  bool optEVisible = false;
  bool isBook = false;
  List<String> options = [];
  int btnPosition = 0;
  int? aPer, bPer, cPer, dPer, ePer;
  late List<String> visibilityOption;

  bool _isFifty = false, _isAudience = false;

  @override
  void initState() {
    super.initState();

    visibilityOption = [];
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60),
    );

    _animationController.addListener(() => setState(() {}));

    _animationController.addStatusListener((state) {
      print('state***$state');

      if (state == AnimationStatus.completed) {
        // if (queIndex >= MAX_QUE_PER_LEVEL) {
        // levelCompleted();
        // } else {
        setState(() {
          score = score - 2;
          inCorrectQuestion = inCorrectQuestion + 1;

          _curTime = 60;
          _animationController.reset();
          _animationController.forward();
          queIndex++;

          // getNextQuestion();
        });
        // }
      }
    });
    _animationController.repeat();
  }

  

  Widget getCoins() {
    return Card(
        child: Container(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl:
                    "https://smartkit.wrteam.in/smartkit/images/coins.png",
                width: 40,
                height: 40,
                color: smartkey2,
              ),
              Text('150'),
            ],
          ),
          SizedBox(width: 50.0, height: 50.0,   ),
          Row(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: "https://smartkit.wrteam.in/smartkit/images/rank.png",
                width: 40,
                height: 40,
                color: smartkey2,
              ),
              Text("75"),
            ],
          ),
        ],
      ),
    ));
  }

  Widget getQuestion() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
                 
            questionLayout(),
               
          ],
        ),
        // question.image.isNotEmpty
        //     ? getImgQuesText()
        //     : Container(
        //         height: 0,
        //       ),
      ],
    );
  }

     

  Widget questionLayout() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: <Widget>[
        Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0)), // set rounded corner radius
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.black26,
                      offset: Offset(1, 2))
                ] // make rounded corner of border
                ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: 180,
            alignment: Alignment.center,
            child: getQuesText()),
      ]),
    );
  }

  Widget getQuesText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

      

  Widget getOption(String option, String optValue, int ans) {
    int? per;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: AnimatedOpacity(
          duration: Duration(milliseconds: 600),
          curve: Curves.easeIn,
          opacity: _isFifty
              ? visibilityOption.contains(option)
                  ? 1.0
                  : 0.0
              : 1.0,
          child: Card(
            child: Material(
              child: InkWell(
                  splashColor: smartkey2,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            child: Text(option,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                )),
                          ),
                          color: smartkey3,
                        ),
                      ),
                      Expanded(child: Text(optValue)),
                      _isAudience
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                      ),
                            )
                          : Container(
                              height: 0,
                            ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SmartKeyResultTablet(),
                      ),
                    );
                  }),
              //elevation: 4,
              color: ans == 1
                  ? Colors.greenAccent
                  : ans == 2
                      ? Colors.redAccent[200]
                      : Colors.white,
            ),
          )),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: smartkeygradient),
        ),
        title: Text("LEVEL" + "" + "1"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark_border),
            onPressed: () async {},
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          getCoins(),
          getQuestion(),
          getOption("A", "optionA", 1),
          getOption("B", "optionB", 0),
          getOption("C", "optionC", 2),
          getOption("D", "optionD", 0),
          // (eMode && optEVisible)
          //     ? (getOption(OPTIONE, optionE))
          //     : Container(
          //         height: 0,
          //       )
        ],
      )),
      persistentFooterButtons: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.22,
          child: Material(
            child: InkWell(
              splashColor: smartkey3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://smartkit.wrteam.in/smartkit/images/fiftyfifty.png",
                  color: smartkey2,
                  width: 30,
                  height: 30,
                ),
              ),
              onTap: () async {},
            ),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.22,
            child: Material(
                child: InkWell(
              splashColor: smartkey3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://smartkit.wrteam.in/smartkit/images/skip.png",
                  color: smartkey2,
                  width: 30,
                  height: 30,
                ),
              ),
              onTap: () {
                setState(() {
                  // SkipQuestion();
                });
              },
            ))),
        Container(
          width: MediaQuery.of(context).size.width * 0.22,
          child: Material(
            child: InkWell(
              splashColor: smartkey3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://smartkit.wrteam.in/smartkit/images/audiencepool.png",
                  color: smartkey2,
                  width: 30,
                  height: 30,
                ),
              ),
              onTap: () {
                // AudiencePoll();
              },
            ),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.22,
            child: Material(
                child: InkWell(
              splashColor: smartkey3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://smartkit.wrteam.in/smartkit/images/resettime.png",
                  color: smartkey2,
                  width: 30,
                  height: 30,
                ),
              ),
              onTap: () {
                // resetTimer();
              },
            )))
      ],
    );
  }
}
