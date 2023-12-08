import 'dart:async';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:googleapis/analytics/v3.dart';
import 'package:googleapis/drive/v3.dart' as ga;
import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as path;
import 'package:http/io_client.dart';
import 'package:path_provider/path_provider.dart';

class GoogleDriveIntegrationPage extends StatefulWidget {
  @override
  _GoogleDriveIntegrationPageState createState() =>
      _GoogleDriveIntegrationPageState();
}

class GoogleHttpClient extends IOClient {
  Map<String, String> _headers;

  GoogleHttpClient(this._headers) : super();

  @override
  Future<IOStreamedResponse> send(http.BaseRequest request) =>
      super.send(request..headers.addAll(_headers));

  @override
  Future<http.Response> head(Object url, {Map<String, String>? headers}) =>
      super.head(url as Uri, headers: headers!..addAll(_headers));
}

class _GoogleDriveIntegrationPageState
    extends State<GoogleDriveIntegrationPage> {
  final storage = new FlutterSecureStorage();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn =
  GoogleSignIn(scopes: ['https://www.googleapis.com/auth/drive.appdata']);
  GoogleSignInAccount? googleSignInAccount;
  ga.FileList? list;
  var signedIn = false;
  bool isloading = false, loginloading = false;
  Color btncolor = Color(0xff3b24c2);
  Directory? directory;

  @override
  void initState() {
    super.initState();
    setDir();
  }

  setDir() async {
    directory = await getExternalStorageDirectory();
  }

  Future<void> _loginWithGoogle() async {
    if (loginloading) return;
    setState(() {
      loginloading = true;
    });
    signedIn = await storage.read(key: "signedIn") == "true" ? true : false;
    googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? googleSignInAccount) async {
      if (googleSignInAccount != null) {
        _afterGoogleLogin(googleSignInAccount);
      }
    });
    if (signedIn) {
      try {
        googleSignIn.signInSilently().whenComplete(() => () {
          setState(() {
            loginloading = false;
          });
        });
      } catch (e) {
        storage.write(key: "signedIn", value: "false").then((value) {
          setState(() {
            signedIn = false;
            loginloading = false;
          });
        });
      }
    } else {
      final GoogleSignInAccount? googleSignInAccount =
      await googleSignIn.signIn();
      _afterGoogleLogin(googleSignInAccount);
      setState(() {
        loginloading = false;
      });
    }
  }

  Future<void> _afterGoogleLogin(GoogleSignInAccount? gSA) async {
    googleSignInAccount = gSA;
    final GoogleSignInAuthentication googleSignInAuthentication =
    await googleSignInAccount!.authentication;

    /* final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );*/

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    /*final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;*/

    User user = (await _auth.signInWithCredential(credential)).user!;

    assert(!user.isAnonymous);

    final User currentUser = _auth.currentUser!;
    assert(user.uid == currentUser.uid);



    storage.write(key: "signedIn", value: "true").then((value) {
      setState(() {
        signedIn = true;
      });
      _listGoogleDriveFiles();
    });
  }

  void _logoutFromGoogle() async {
    googleSignIn.signOut().then((value) {

      storage.write(key: "signedIn", value: "false").then((value) {
        setState(() {
          signedIn = false;
        });
      });
    });
  }

  _uploadFileToGoogleDrive() async {
    if (isloading) return;

    var client = GoogleHttpClient(await googleSignInAccount!.authHeaders);
    var drive = ga.DriveApi(client);
    ga.File fileToUpload = ga.File();
    // var file = await FilePicker.getFile();
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        isloading = true;
      });
      File file = File(result.files.single.path!);
      fileToUpload.parents = ["appDataFolder"];
      fileToUpload.name = path.basename(file.absolute.path);
      var response = await drive.files.create(
        fileToUpload,
        uploadMedia: ga.Media(file.openRead(), file.lengthSync()),
      );

      _listGoogleDriveFiles();
      setState(() {
        isloading = false;
      });
    }
  }

  Future<void> _listGoogleDriveFiles() async {
    var client = GoogleHttpClient(await googleSignInAccount!.authHeaders);
    var drive = ga.DriveApi(client);
    drive.files.list(spaces: 'appDataFolder').then((value) {
      setState(() {
        list = value;
      });

    });
  }

  Future<void> _downloadGoogleDriveFile(
      String? fName, String? gdID, File saveFile) async {
    if (isloading) return;

    bool isfileexist = await saveFile.exists();


    if (isfileexist) {
      OpenFile.open(saveFile.path);
    } else {
      setState(() {
        isloading = true;
      });
      var client = GoogleHttpClient(await googleSignInAccount!.authHeaders);
      var drive = ga.DriveApi(client);
      ga.Media file = (await (drive.files.get(gdID!, downloadOptions: ga.DownloadOptions.fullMedia) as FutureOr<Media>));
      List<int> dataStore = [];
      file.stream.listen((data) {

        dataStore.insertAll(dataStore.length, data);
      }, onDone: () {

        saveFile.writeAsBytes(dataStore);

        setState(() {
          isloading = false;
        });
        OpenFile.open(saveFile.path);
      }, onError: (error) {
        setState(() {
          isloading = false;
        });
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Something went wrong')));

      });
    }
  }

  Widget generateFilesWidget() {
    return list == null
        ? Container()
        : ListView.separated(
        itemBuilder: (context, index) {
          String? fName = list!.files![index].name;
          final saveFile = File('${directory!.path}/$fName');

          return Row(children: [
            Text('\t${index + 1}\t'),
            Expanded(
              child: Text(list!.files![index].name!),
            ),
            IconButton(
              icon: FutureBuilder<bool>(
                  future: isFileExist(saveFile),
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data!) {
                      return Icon(Icons.open_in_new);
                    } else if (snapshot.hasError) {
                      return Icon(Icons.download_rounded);
                    }
                    return Icon(Icons.download_rounded);
                  }),
              onPressed: () {
                _downloadGoogleDriveFile(
                    fName, list!.files![index].id, saveFile);
              },
            ),
          ]);
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: list!.files!.length);
  }

  Future<bool> isFileExist(File file) async {
    return await file.exists();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('GoogleDrive', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          if (signedIn)
            TextButton(
                onPressed: () {
                  _logoutFromGoogle();
                },
                child: Text(
                  "Logout",
                  style: TextStyle(color: btncolor),
                )),
        ],
      ),
      bottomNavigationBar: signedIn
          ? Padding(
        padding: EdgeInsets.only(bottom: Platform.isIOS ? 20 : 0),
        child: ElevatedButton(
          onPressed: _uploadFileToGoogleDrive,
          child: Text(
            'Upload File to Google Drive',
            style: TextStyle(fontSize: 16.0),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ), backgroundColor: btncolor,
            elevation: 1.0,
            textStyle: TextStyle(fontWeight: FontWeight.bold),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          ),
        ),
      )
          : null,
      body: Stack(
        children: [
          signedIn
              ? generateFilesWidget()
              : Center(
              child: ElevatedButton(
                onPressed: _loginWithGoogle,
                child: loginloading
                    ? CircularProgressIndicator(
                  backgroundColor: Colors.white,
                )
                    : Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(fontSize: 16.0),
                ),
                style: raisedButtonStyle,
              )),
          if (isloading)
            Center(
              child: new CircularProgressIndicator(),
            )
        ],
      ),
    );
  }

  ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Color(0xffdd4b39),
    padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
  );
}
