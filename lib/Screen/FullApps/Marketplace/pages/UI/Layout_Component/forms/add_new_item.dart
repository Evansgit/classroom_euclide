import 'dart:io';

import 'package:flutter/material.dart';

import '../categories.dart';
import '../location_layout.dart';
import 'imageGallerySelected.dart';

class AddNewItemForm extends StatefulWidget {
  @override
  _AddNewItemFormState createState() => _AddNewItemFormState();
}

class _AddNewItemFormState extends State<AddNewItemForm> {
  List<String> _categoryDropDownList = [];
  List<String> _locationDropDownList = [];
  String? _dropDownCategoryValue;
  String? _dropDownLocationValue;
  late File galleryFile;
  bool _dropDown = false;

  @override
  void initState() {
    _categoryDropDownList.addAll(['Electronics', 'Clothing', 'Hobbies']);
//    _locationDropDownList
//        .addAll(['Location1', 'Location2', 'Location3', 'Location4']);
    // _dropDownValue = _dropDownList.elementAt(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//display image selected from gallery

    return Column(
      children: <Widget>[
        Container(
          height: 180.0,
          decoration: BoxDecoration(
            color: Color(0xFFD2E1FF).withOpacity(0.3),
//            border: Border(
//              bottom: BorderSide(
//                  color: Colors.black, width: 1.0, style: BorderStyle.solid),
//              left: BorderSide(
//                  color: Colors.black, width: 1.0, style: BorderStyle.solid),
//              right: BorderSide(
//                  color: Colors.black, width: 1.0, style: BorderStyle.solid),
//              top: BorderSide(
//                  color: Colors.black, width: 1.0, style: BorderStyle.solid),
//            ),
//            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => imageGallerySelected()));
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 87.0, right: 87.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 1.0)),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  new imageGallerySelected()));
                        },
                      ),
                      Text(
                        "Add Photos",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        CustomInputTextField(
          obscureText: false,
          textAlign: TextAlign.start,
          hintText: 'Title',
        ),
        SizedBox(height: 20.0),
        // _buildDropDownList(hint: 'Category', list: _categoryDropDownList),
        DropdownButtonHideUnderline(
          child: Container(
            padding: EdgeInsets.only(left: 8.0, right: 4.0, top: 8.0),
//            height: 60.0,
            height: 65.0,
            child: Stack(
              children: <Widget>[
                Padding(
//                  padding: const EdgeInsets.only(top:10.0,left: 5.0),
                  padding: const EdgeInsets.only(top: 0.0, left: 5.0),
                  child: _dropDown
                      ? Text(
                          "Category",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Colors.black45),
                        )
                      : Text(
                          "Category",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 0.0,
                              color: Colors.transparent),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 4.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => CategoriesList()));
                    },
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Category",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 19.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
//                 child: DropdownButton(
//                  isExpanded: true,
//                  hint: Padding(
//                    padding: const EdgeInsets.only(left:7.0),
//                    child: Text('Category',style: TextStyle(color: Colors.black87),),
//                  ),
//                  value: _dropDownCategoryValue,
//                  items: _categoryDropDownList.map((String value) {
//                    return DropdownMenuItem(
//                      value: value,
//                      child: Padding(
//                        padding: const EdgeInsets.only(left:5.0),
//                        child: InkWell(
//                            onTap: (){
//                      Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>locationLayout()));
//                      },
//                            child: Text(value)),
//                      ),
//                    );
//                  }).toList(),
//                  onChanged: (String value) {
//                    setState(() {
//                      _dropDownCategoryValue = value;
//                      _dropDown=true;
//                    });
//                  },
//              ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFD2E1FF).withOpacity(0.3),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        CustomInputTextField(
          obscureText: false,
          textAlign: TextAlign.start,
          hintText: 'Price',
        ),
        SizedBox(height: 20.0),
        // _buildDropDownList(hint: 'Location', list: _locationDropDownList),

        Container(
          color: Color(0xFFD2E1FF).withOpacity(0.3),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) => locationLayout()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 5.0, bottom: 5.0),
              child: Container(
                height: 60.0,
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Location",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.5,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black54,
                          size: 19.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
//              child: ExpansionTileLocation(
//                  title:Text(
//                  "Singapore"
//                   ),
//                  children:[
//                   InkWell(
//                     onTap: (){
//                       Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>locationLayout()));
//                     },
//                     child: Text("Singapore 1"),
//                   ),
//                   SizedBox(height: 10.0,),
//                   InkWell(
//                     onTap: (){
//                       Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>locationLayout()));
//                     },
//                     child: Text("Singapore 2"),
//                   ),
//                   SizedBox(height: 10.0,),
//                   InkWell(
//                     onTap: (){
//                       Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>locationLayout()));
//                     },
//                     child: Text("Singapore 3"),
//                   ),
//                  ],
//              ),
            ),
          ),
        ),

//        DropdownButtonHideUnderline(
//          child: Container(
//            padding: EdgeInsets.only(left: 7.0),
//            height: 50.0,
//            child: DropdownButton(
//              isExpanded: true,
//              hint: Padding(
//                padding: const EdgeInsets.only(left:10.0),
//                child: Text('Location'),
//              ),
//              value: _dropDownLocationValue,
//              items: _locationDropDownList.map((String value) {
//                return DropdownMenuItem(
//                  value: value,
//                  child: Text(value),
//                );
//              }).toList(),
//              onChanged: (String value) {
//                setState(() {
//                  _dropDownLocationValue = value;
//                });
//              },
//            ),
//            decoration: BoxDecoration(
//              color: Color(0xFFD2E1FF).withOpacity(0.3),
//            ),
//          ),
//        ),
        SizedBox(height: 25.0),
        Container(
          color: Color(0xFFD2E1FF).withOpacity(0.3),
          child: Theme(
            data: ThemeData(hintColor: Colors.transparent),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 12.0),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 16.0, color: Colors.black45),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextField(
                    maxLines: 5,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
//                  hintText: "Description",
////                labelText: "Description",
////                labelStyle: TextStyle(color: Colors.black54,),
//                  hintStyle: TextStyle(color: Colors.transparent),
                      contentPadding:
                          EdgeInsets.only(left: 16.0, top: 0.0, bottom: 30.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 0.0, right: 0.0),
            child: Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xFFA3BDED),
                        const Color(0xFF6991C7),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp)),
              child: Center(
                  child: Text(
                "Post",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700),
              )),
            )),
      ],
    );
  }
}

class CustomInputTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final Function? onChanged;
  final bool? obscureText;
  final TextAlign? textAlign;

  CustomInputTextField(
      {this.controller,
      this.onChanged,
      this.inputType,
      this.hintText,
      this.obscureText,
      this.textAlign});

  @override
  _CustomInputTextFieldState createState() => _CustomInputTextFieldState(
      controller: controller,
      inputType: inputType,
      hintText: hintText,
      obscureText: obscureText,
      textAlign: textAlign);
}

class _CustomInputTextFieldState extends State<CustomInputTextField> {
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final Function? onChanged;
  final bool? obscureText;
  final TextAlign? textAlign;

  _CustomInputTextFieldState(
      {this.controller,
      this.onChanged,
      this.inputType,
      this.hintText,
      this.obscureText,
      this.textAlign});

  bool? isEnable;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFD2E1FF).withOpacity(0.9),
      child: Theme(
        data: ThemeData(hintColor: Colors.transparent),
        child: TextField(
          textAlign: textAlign!,
          obscureText: obscureText!,
          controller: controller,
          keyboardType: inputType,
          autocorrect: false,
          autofocus: false,
          onChanged: onChanged as void Function(String)?,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(14.0),
              filled: true,
              fillColor: Colors.white70,
              labelText: hintText,
              labelStyle: TextStyle(color: Colors.black54)),
        ),
      ),
    );
  }
}
