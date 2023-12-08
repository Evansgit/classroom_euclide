import 'package:flutter/material.dart';
import 'SampleDetailScreen.dart';

import 'package:easy_localization/easy_localization.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({Key? key}) : super(key: key);

  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          ('language'),
          style: TextStyle(
              fontFamily: "Gotik",
              fontWeight: FontWeight.w600,
              fontSize: 18.5,
              letterSpacing: 1.2,
              color: Colors.white),
        ).tr(),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(('titleCard'),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Gotik",
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600))
                                  .tr(),
                              content: Text(
                                ('descCard'),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black26),
                              ).tr(),
                              actions: [
                                TextButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    context.setLocale(Locale('en', 'US'));
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ));
                  },
                  child: cardName(
                    flag: "https://thumbs2.imgbox.com/83/76/MhtndBd1_t.png",
                    title: ('english').tr(),
                  )),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(('titleCard').tr(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Gotik",
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600)),
                              content: Text(
                                ('descCard').tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black26),
                              ),
                              actions: [
                                TextButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    context.setLocale(Locale('ar', 'DZ'));
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ));
                  },
                  child: cardName(
                    flag: "https://thumbs2.imgbox.com/83/f5/y4BZ7a3i_t.png",
                    title: ('arabic').tr(),
                  )),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(('titleCard').tr(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Gotik",
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600)),
                              content: Text(
                                ('descCard').tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black26),
                              ),
                              actions: [
                                TextButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    context.setLocale(Locale('zh', 'CN'));
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20.0),
                    child: Container(
                      height: 80.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 0.0)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                        child: Row(children: <Widget>[
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12.withOpacity(0.06),
                                spreadRadius: 10.0,
                              )
                            ]),
                            child: Image.network(
                              "https://images2.imgbox.com/57/2f/jANEEpAl_o.png",
                              height: 65.0,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              ('china').tr(),
                              style: TextStyle(
                                  fontFamily: "Popins",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3),
                            ),
                          )
                        ]),
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(('titleCard').tr(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Gotik",
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600)),
                              content: Text(
                                ('descCard').tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black26),
                              ),
                              actions: [
                                TextButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    context.setLocale(Locale('hi', 'IN'));
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20.0),
                    child: Container(
                      height: 80.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 0.0)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                        child: Row(children: <Widget>[
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12.withOpacity(0.06),
                                spreadRadius: 10.0,
                              )
                            ]),
                            child: Image.network(
                              "https://thumbs2.imgbox.com/a9/cb/esWtnJYU_t.png",
                              height: 65.0,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              ('india').tr(),
                              style: TextStyle(
                                  fontFamily: "Popins",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3),
                            ),
                          )
                        ]),
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(('titleCard').tr(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Gotik",
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600)),
                              content: Text(
                                ('descCard').tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black26),
                              ),
                              actions: [
                                TextButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    context.setLocale(Locale('id', 'ID'));
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20.0),
                    child: Container(
                      height: 80.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 0.0)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                        child: Row(children: <Widget>[
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12.withOpacity(0.06),
                                spreadRadius: 10.0,
                              )
                            ]),
                            child: Image.network(
                              "https://images2.imgbox.com/97/a3/q6PR4L3M_o.png",
                              height: 65.0,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              ('indonesia').tr(),
                              style: TextStyle(
                                  fontFamily: "Popins",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3),
                            ),
                          )
                        ]),
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(('titleCard').tr(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Gotik",
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600)),
                              content: Text(
                                ('descCard').tr(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black26),
                              ),
                              actions: [
                                TextButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    context.setLocale(Locale('pt', 'BR'));
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20.0),
                    child: Container(
                      height: 80.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 0.0)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                        child: Row(children: <Widget>[
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12.withOpacity(0.06),
                                spreadRadius: 10.0,
                              )
                            ]),
                            child: Image.network(
                              "https://thumbs2.imgbox.com/82/94/E9NFfOLr_t.png",
                              height: 65.0,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              ('brazil').tr(),
                              style: TextStyle(
                                  fontFamily: "Popins",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3),
                            ),
                          )
                        ]),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => SampleLanguage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 20.0, top: 40.0),
                    child: Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Center(
                        child: Text(
                          ('detail').tr(),
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardName extends StatelessWidget {
  String title, flag;
  cardName({required this.title, required this.flag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Container(
        height: 80.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10.0,
                  spreadRadius: 0.0)
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 15.0),
          child: Row(children: <Widget>[
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12.withOpacity(0.06),
                  spreadRadius: 10.0,
                )
              ]),
              child: Image.network(
                flag,
                height: 41.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: "Popins",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.3),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
