import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/AstuceVideo.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/BecomeCNA.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/BecomeHHA.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/BecomeRN.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/EducationalCareer.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/EducationalCredential.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/FederalGrant.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/GreenCardGuide.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/IndeedJobs.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/InstitutionalGrant.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/InternshipsGCard.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/InternshipsVisa.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/InterviewTips.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/LearnEnglish.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/MonsterJobs.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/MyVisaJobs.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/OnlineScholarships.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/Resume.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/Scholarship.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/SpeakWithConfidance.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/StateGrant.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/DetailCardHomePage/WorldEducation.dart';
import 'package:crypto_template/Screen/FullApps/NIuEducation/HomeScreen/ChatItem.dart';
import 'package:flutter/material.dart';

import 'Subscription.dart';
import 'notification.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new subscription()));
            },
            child: Icon(Icons.rss_feed)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new notification()));
                },
                child: Icon(Icons.notifications)),
          ),
        ],
        elevation: 0.2,
        title: Text(
          "Dream Guide",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            fontFamily: "Sofia",
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 5.0)),
            itemCard(
              img:
                  "lib/Screen/FullApps/NiuEducation/assets/image/GreenCard.jpg",
              txt: "Green Card Guide",
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new GreenCardDetail(),
                ));
              },
            ),
            itemCard(
              img:
                  "lib/Screen/FullApps/NiuEducation/assets/image/LearnEnglish.jpg",
              txt: "Learn English",
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new LearnEnglish(),
                ));
              },
            ),
            itemCard(
              img:
                  "lib/Screen/FullApps/NiuEducation/assets/image/SpeakWithConfidence.jpg",
              txt: "Speak With Confidance",
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new SpeakWithConfidance(),
                ));
              },
            ),
            itemCard(
              img:
                  "lib/Screen/FullApps/NiuEducation/assets/image/InterviewTips.jpg",
              txt: "Interview Tips",
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new InterviewTips(),
                ));
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/FullApps/NiuEducation/assets/image/Nursing.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10.0, bottom: 10.0),
                        child: Text(
                          "Nursing",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Sofia"),
                        ),
                      ),
                      Container(
                        height: 130.0,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left: 10.0)),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/nurse4.jpg",
                              txt: "Become \nan HHA",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new BecomeHHA(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/nurse1.jpg",
                              txt: "Become \na CNA",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new BecomeCNA(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/nurse3.jpg",
                              txt: "Become \nan RN",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new BecomeRN(),
                                ));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            itemCard(
              img: "lib/Screen/FullApps/NiuEducation/assets/image/Resume.jpg",
              txt: "Resume",
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new Resume(),
                ));
              },
            ),
            itemCard(
              img:
                  "lib/Screen/FullApps/NiuEducation/assets/image/EducationalCareer.jpg",
              txt: "Educational Career",
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new EducationalCareer(),
                ));
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/FullApps/NiuEducation/assets/image/backdiploma.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10.0, bottom: 10.0),
                        child: Text(
                          "Evaluation of Diploma",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Sofia"),
                        ),
                      ),
                      Container(
                        height: 130.0,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/EvalutionOfDiploma.jpg",
                              txt: "World Education Service",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new WorldEducation(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/education2.jpg",
                              txt: "Educational Credential Evaluators",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new EducationalCredential(),
                                ));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/FullApps/NiuEducation/assets/image/Nursing.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10.0, bottom: 10.0),
                        child: Text(
                          "Scholarships | Free Money",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Sofia"),
                        ),
                      ),
                      Container(
                        height: 130.0,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/Scholarship.jpg",
                              txt: "F1 - Scholarship",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new Scholarship(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/instutionalGrant.jpg",
                              txt: "Institutional Grant",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new InstitutionalGrant(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/stateGrant.jpg",
                              txt: "State Grant",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new StateGrant(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/federalGrant.jpg",
                              txt: "Federal Grant | FAFSA",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new FederalGrant(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/onlineScholarships.jpg",
                              txt: "Online Scholarships",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new OnlineScholarship(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/chat.jpg",
                              txt: "Scholarships Chat Forum",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (_, __, ___) => new chatItem(),
                                    transitionsBuilder: (_,
                                        Animation<double> animation,
                                        __,
                                        Widget child) {
                                      return Opacity(
                                        opacity: animation.value,
                                        child: child,
                                      );
                                    },
                                    transitionDuration:
                                        Duration(milliseconds: 1500)));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/Screen/FullApps/NiuEducation/assets/image/work.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10.0, bottom: 10.0),
                        child: Text(
                          "Jobs | Internship",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Sofia"),
                        ),
                      ),
                      Container(
                        height: 130.0,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/internshipsvisa.jpg",
                              txt: "Internships | F1 Visa",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new Internships(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/internshipsGcard.jpg",
                              txt: "MyVisaJobs | F1 Visa",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new MyVisaJobs(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/MyVisaJobs.jpg",
                              txt: "Internships | GCard",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new InternshipsGCard(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/indeedCard.jpg",
                              txt: "Indeed | Jobs | GCard",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new IndeedJobs(),
                                ));
                              },
                            ),
                            itemCardHorizontal(
                              img:
                                  "lib/Screen/FullApps/NiuEducation/assets/image/MonsterGcardJobs.jpg",
                              txt: "Monster | Jobs | GCard",
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new MonsterJobs(),
                                ));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            itemCard(
              img:
                  "lib/Screen/FullApps/NiuEducation/assets/image/TrickVideo.jpg",
              txt: "Astuce en Video",
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new AstuceVideo(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// Constructor for itemCard for List Menu
class itemCard extends StatelessWidget {
  /// Declaration and Get data from homePageDataList.dart
  String? img, txt;
  GestureTapCallback? onTap;
  itemCard({this.img, this.txt, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 130.0,
          width: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              image:
                  DecorationImage(image: AssetImage(img!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFABABAB).withOpacity(0.3),
                  blurRadius: 1.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  txt!,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    fontSize: 21.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Constructor for itemCard for List Menu
class itemCardHorizontal extends StatelessWidget {
  /// Declaration and Get data from homePageDataList.dart
  String? img, txt;
  GestureTapCallback? onTap;

  itemCardHorizontal({this.img, this.txt, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 2.0),
        child: Container(
          height: 130.0,
          width: 230.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              image:
                  DecorationImage(image: AssetImage(img!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFABABAB).withOpacity(0.3),
                  blurRadius: 1.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.3),
              ),
              child: Center(
                child: Text(
                  txt!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Constructor for itemCard for List Menu
class itemCardSubMenu extends StatelessWidget {
  @override
  String? img, txt;
  GestureTapCallback? onTap;

  itemCardSubMenu({this.img, this.txt, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 2.0),
        child: Container(
          height: 130.0,
          width: 80.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
              image:
                  DecorationImage(image: AssetImage(img!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFABABAB).withOpacity(0.3),
                  blurRadius: 1.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.3),
              ),
              child: Center(
                child: Text(
                  txt!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w900,
                    fontSize: 11.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
