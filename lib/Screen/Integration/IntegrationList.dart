import 'package:flutter/material.dart';

import '../Support_Screen/InformationScreen.dart';
import 'BarcodeScanner/Page/QR_Create_Page.dart';
import 'BeforeAfterImage/before_after_image_screen.dart';
import 'Chatbot/ChatBot.dart';
import 'Connectivity/Connectivity.dart';
import 'CropImage/CropImage.dart';
import 'DatabaseIntegration/DatabaseListScreen.dart';
import 'FaceID/FaceID.dart';
import 'FacebookLogin/FacebookSigin.dart';
import 'FilePicker/ListFilePicker.dart';
import 'FingerPrint/FingerPrint.dart';
import 'Firebase CRUD/ListCrudFirebase.dart';
import 'FirebaseChat/ChatLoginPage.dart';
import 'FlutterSearchlableList/FlutterSearchLableList.dart';
import 'GlassCard/GlassCard.dart';
import 'GoogleDriveIntragation/GoogleDriveIntegrationPage.dart';
import 'GoogleMapsSlider/ListGoogleMaps.dart';
import 'GoogleSignIn/GoogleSignIn.dart';
// import 'GraphAndCharts/ListGraphAndCharts.dart';
import 'Language_Integration/LanguageScreen.dart';
import 'Notification/LocalNotificationScreen.dart';
import 'OTPPhoneNumber/Verification.dart';
import 'PDF_Viewer/PDF_Main_Screen.dart';
import 'PageTranstition/PageTranstitionSample.dart';
import 'Pagination/PaginationMain.dart';
import 'PasswordValidation/Password_Validation.dart';
import 'PaymetGatways/ListPaymentGateway.dart';
import 'Picker/ListImagePicker.dart';
import 'ReadAndWriteFile/ReadAndWriteFileMain.dart';
import 'Rest API/RestApiList.dart';
import 'SearchFirebase/Search/search.dart';
import 'SignInFirebase/SignInFirebase.dart';
import 'Signature/SignaturePage.dart';
import 'SignupFirebase/SignupFirebase.dart';
import 'ThemeDarkAndNight/DarkLightThemeScreen.dart';
import 'YouTube/YoutubePage.dart';
import 'flutterCalender/CalenderHomePage.dart';

class IntegrationList extends StatefulWidget {
  IntegrationList({Key? key}) : super(key: key);

  @override
  _IntegrationListState createState() => _IntegrationListState();
}

class _IntegrationListState extends State<IntegrationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            InkWell(
              onTap: () {
                // _showInterstitialAd();
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => InformationScreen()));
              },
              child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20.0, top: 15.0),
                  child: Image.asset(
                    "assets/images/help.png",
                    height: 25.0,
                    width: 25.0,
                  )),
            )
          ],
          title: Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 2.0),
            child: Text(
              "Integration",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w900,
                  fontSize: 31.0,
                  color: Colors.black),
            ),
          ),
          elevation: 0.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => LanguageScreen()));
                },
                child: card("Change Language", Color(0xFFF6C6EA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => VerificatoinOTP()));
                },
                child: card("Phone Authentication", Color(0xFFF47B5FF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => FingerprintPage()));
                },
                child: card("Fingerprint", Color(0xFF937DC2))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => LocalNotificationScreen()));
                },
                child: card(
                    "Local Notification", Color.fromARGB(255, 116, 121, 255))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SignaturePage()));
                },
                child: card("Signature", Color(0xFFAEBDCA))),
            // InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(PageRouteBuilder(
            //           pageBuilder: (_, __, ___) => ListGraph()));
            //     },
            //     child: card("List Graph and Charts", Color(0xFFE99497))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => PDFScreen()));
                },
                child: card("PDF Viewer", Color(0xFF5F939A))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => QRCreatePage()));
                },
                child: card("Create Barcode Code", Color(0xFF87A2FB))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => YoutubePage()));
                },
                child: card("Youtube Page", Color(0xFFFFC074))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListPickerImageVide()));
                },
                child: card("Image Video Picker", Color(0xFFABD9FF))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListFilePicker()));
                },
                child: card("List File Picker", Color(0xFF5CB8E4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => BeforeAfterImageScreen()));
                },
                child: card("Before After Image", Color(0xFF4CA1A3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) =>
                          GoogleDriveIntegrationPage()));
                },
                child: card("Google Drive Integration", Color(0xFFC6DCE4))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListGoogleMaps()));
                },
                child: card("Google Map Page", Color(0xFFF47C7C))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => FlutterSearchLableList()));
                },
                child: card("Flutter Searchlable", Color(0xFF3F4E4F))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListDatabaseScreen()));
                },
                child: card("List Database Screen", Color(0xFFADCF9F))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ChatLoginPage()));
                },
                child: card("Firebase Chat", Color(0xFFC689C6))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ListPaymentGatways()));
                },
                child: card("Payment Gatways", Color(0xFFB2AB8C))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => PasswordValidationScreen()));
                },
                child: card("Password Checker", Color(0xFFF1CA89))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SearchFirebase()));
                },
                child: card("Search Data From Firebase",
                    Color.fromARGB(255, 168, 244, 176))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => chatBot()));
                },
                child: card("Chatbot", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => RestApiList()));
                },
                child: card("Rest Api", Color(0xFF4CA1A3))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => CropImageScreen()));
                },
                child: card("Crop Image", Color(0xFFC98474))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => CalenderHomePage()));
                },
                child: card("Calender", Color(0xFF94D0CC))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => GoogleScreenLogin()));
                },
                child: card("Google Signin", Color(0xFFA5E1AD))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SignUpFirebase()));
                },
                child: card("Signup Auth Firebase", Color(0xFFF1CA89))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => GlassCArd()));
                },
                child: card("Glass Card", Color(0xFF42855B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SignInFirebase()));
                },
                child: card("Signin Auth Firebase", Color(0xFFFFB26B))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => FacebookScreenLogin()));
                },
                child: card("Facebook Signin", Color(0xFF94D0CC))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ReadAndWriteFileMain()));
                },
                child: card("Read and Write File", Color(0xFF7FB77E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => PaginationMain()));
                },
                child: card("Pagination", Color(0xFF277BC0))),
            // InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(PageRouteBuilder(
            //           pageBuilder: (_, __, ___) => ShapeList()));
            //     },
            //     child: card("Shape", Color.fromARGB(255, 148, 208, 171))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => CRUDFirebase()));
                },
                child: card("CRUD Firebase", Color(0xFFF4A9A8))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ConnectivityScreen()));
                },
                child: card("Check Connectivity", Color(0xFF939B62))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => FacePage()));
                },
                child: card("Face ID", Color(0xFFA2DBFA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => PageTranstition()));
                },
                child: card("Page Transtition", Color(0xFFF6C6EA))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DayNightSwitcherScreen()));
                },
                child: card("Day and Night Switcher", Color(0xFF25316D))),
            SizedBox(
              height: 100.0,
            )
          ],
        ),
      ),
    );
  }

  Widget card(String title, Color _colors) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: _colors,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 45.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width - 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.03),
                            blurRadius: 10.0,
                            spreadRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 19.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width - 145, top: 30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                      backgroundColor: _colors,
                      radius: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
