
import 'package:flutter/material.dart';

import '../../../../../../Library/Ratting_Bar/ratting.dart';

class addReview extends StatefulWidget {
  @override
  _addReviewState createState() => _addReviewState();
}

class _addReviewState extends State<addReview> {
  /// set key for bottom sheet
  final GlobalKey<ScaffoldMessengerState> _key =
      GlobalKey<ScaffoldMessengerState>();

  @override
  double rating = 0.0;
  int starCount = 5;
  bool? loading;
  bool isEnable = false;
  final TextEditingController _description = TextEditingController();

  Widget build(BuildContext context) {
//    Future.delayed(Duration.zero, () => _showDialog(context));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Add Review",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        elevation: 0.0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 6.0),
            child: Text(
              "Cancel",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Rating",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: StarRating(
                  size: 27.0,
                  rating: rating,
                  color: Colors.orange,
                  borderColor: Colors.grey,
                  starCount: starCount,
                  onRatingChanged: (rating) => setState(
                    () {
                      this.rating = rating;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Review",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    color: Color(0xFFD2E1FF).withOpacity(0.3),
                    child: Theme(
                      data: ThemeData(hintColor: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 11.0),
                        child: TextField(
                          maxLines: 5,
                          controller: _description,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: "Description",
                            hintStyle: TextStyle(color: Colors.black54),
                            contentPadding: EdgeInsets.only(
                                left: 16.0, top: 0.0, bottom: 30.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 190.0),
                child:
                    CustomButton('Add', isEnable ? () => _submitForm() : null),
//                Container(
//                  height: 50.0,
//                  width: double.infinity,
//                  decoration: BoxDecoration(
//                    color: Colors.blueAccent
//                  ),
//                  child: Center(child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w600),),),
//                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    setState(() {
      loading = true;
    });
    if (_description.text.isEmpty ||
        !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(_description.text)) {
      Navigator.of(context).pop();
      return;
    } else {
      Text("das");
    }
  }

  bool isEmpty() {
    setState(() {
      if (_description.text.trim() != '') {
        isEnable = true;
      } else {
        isEnable = false;
      }
    });
    return isEnable;
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final Function? onPressed;
  CustomButton(this.label, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100.0))),
      height: 50.0,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0, backgroundColor: Colors.blueAccent,
          padding: EdgeInsets.all(10.0),
        ),
        onPressed: onPressed as void Function()?,
        child: Text(
          label,
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
              color: Colors.white),
        ),
      ),
    );
  }
}

/// Custom Text Header for Dialog
var _txtCustomHead = TextStyle(
  color: Colors.black54,
  fontSize: 23.0,
  fontWeight: FontWeight.w600,
  fontFamily: "Sofia",
);

/// Custom Text Description for Dialog
var _txtCustomSub = TextStyle(
  color: Colors.black38,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
  fontFamily: "Sofia",
);

/// Card Popup
_showDialog(BuildContext ctx) {
  showDialog(
    context: ctx,
    barrierDismissible: true,
    builder: (BuildContext context) => SimpleDialog(
      title: Center(
          child: Text(
        "Order",
        style: _txtCustomHead,
      )),
      children: <Widget>[
        Center(
            child: Padding(
          padding: const EdgeInsets.only(
              top: 20.0, bottom: 40.0, left: 20.0, right: 20.0),
          child: Text(
            "A message has been sent to the seller for this order. You can write a review for your order",
            textAlign: TextAlign.center,
            style: _txtCustomSub,
          ),
        )),
        InkWell(
          onTap: () {},
          child: Container(
            height: 50.0,
            width: double.infinity,
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                "Ok",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
