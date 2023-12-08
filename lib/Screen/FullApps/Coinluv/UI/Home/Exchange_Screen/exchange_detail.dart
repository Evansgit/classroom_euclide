import 'package:crypto_template/Screen/FullApps/Coinluv/Component/Style.dart';
import 'package:flutter/material.dart';

class exchangeDetail extends StatefulWidget {
  @override
  _exchangeDetailState createState() => _exchangeDetailState();
}

class _exchangeDetailState extends State<exchangeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.colorBackgroundBlack,
      appBar: AppBar(
        title: Text("EXCHANGE", style: txtStyle.titleAppbar),
        centerTitle: true,
        backgroundColor: ColorStyle.colorBackgroundBlack,
        elevation: 0.0,
        actions: <Widget>[
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.white,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ///
              /// Send text field
              ///
              Text(
                "Send BTC to below address",
                style: txtStyle.txtLightRoboto
                    .copyWith(fontSize: 15.5, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                        child: Container(
                          height: 45.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.white12,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15.5),
                              keyboardType: TextInputType.number,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: ((_, __, ___) => null)
                                as Widget Function(BuildContext,
                                    Animation<double>, Animation<double>)));
                      },
                      child: Container(
                        height: 45.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: ColorStyle.colorSenondaryBackground,
                        ),
                        child: Icon(
                          Icons.subdirectory_arrow_right,
                          size: 22.0,
                          color: ColorStyle.colorOrangeBackground,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Text(
                  "OR",
                  style: txtStyle.txtMedium,
                ),
              ),
              SizedBox(
                height: 0.0,
              ),
              Center(
                  child: Image.asset(
                "lib/Screen/FullApps/Coinluv/image/qrCode.png",
                color: ColorStyle.colorOrangeBackground,
                height: 200.0,
              )),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Order Details ",
                style: txtStyle.txtMedium.copyWith(fontSize: 16.0),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: double.infinity,
                color: ColorStyle.colorSenondaryBackground,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0, left: 15.0, right: 15.0, bottom: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Order ID ",
                            style: txtStyle.txtRegular,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.insert_drive_file,
                              color: ColorStyle.colorOrangeBackground,
                              size: 14.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "70d73df5-4fa9-4bc9-be8f-16215",
                        style: txtStyle.txtLightRoboto,
                      ),
                      SizedBox(
                        height: 17.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Recipient Address ETH",
                            style: txtStyle.txtRegular,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/2000px-Ethereum_logo_2014.svg.jpg",
                                height: 16.0,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "70d73df5-4fa9-4bc9-be8f-16215",
                        style: txtStyle.txtLightRoboto,
                      ),
                      SizedBox(
                        height: 17.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Status",
                            style: txtStyle.txtRegular,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Image.network(
                                "",
                                height: 16.0,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "70d73df5-4fa9-4bc9-be8f-16215",
                        style: txtStyle.txtLightRoboto,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Center(
                        child: Text(
                          "Contact Support",
                          style: txtStyle.txtRegular.copyWith(
                              color: ColorStyle.colorOrangeBackground,
                              fontSize: 17.0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
