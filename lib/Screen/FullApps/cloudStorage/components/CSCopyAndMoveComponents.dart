import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/components/CSDisplayDataInListViewComponents.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/components/CSSearchBar.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/model/CSDataModel.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSColors.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSImages.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSWidgets.dart';

class CSCopyAndMoveComponents extends StatefulWidget {
  static String tag = '/CSCopyAndMoveComponents';

  final List<CSDataModel>? listOfData;
  final String? appBarTitle;

  const CSCopyAndMoveComponents({Key? key, this.listOfData, this.appBarTitle})
      : super(key: key);

  @override
  CSCopyAndMoveComponentsState createState() => CSCopyAndMoveComponentsState();
}

class CSCopyAndMoveComponentsState extends State<CSCopyAndMoveComponents> {
  List<CSDataModel> getFileSharingList = getFileSharingData();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.close, color: CSDarkBlueColor),
            onPressed: () {
              finish(context);
            }),
        title: Text(widget.appBarTitle!),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: CSDarkBlueColor),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CSSearchBar(
                      hintText: "Searching in FileSharing",
                      listData: getFileSharingList),
                );
              }),
          IconButton(
              icon: Icon(Icons.create_new_folder, color: CSDarkBlueColor),
              onPressed: () async {
                var folderName = await buildCreateFolderDialog(context);
                if (folderName != null) {
                  getFileSharingList.add(CSDataModel(
                      fileName: folderName,
                      fileUrl: CSFolderIcon,
                      isFolder: true));
                }
                setState(() {});
              }),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            width: size.width,
            height: size.height * 0.8,
            child: SingleChildScrollView(
              child: CSDisplayDataInListViewComponents(
                listOfData: widget.listOfData,
                isSelectAll: false,
                isSelect: false,
                isCopyOrMove: true,
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 10,
            child: MaterialButton(
              height: 50,
              minWidth: 80,
              color: CSDarkBlueColor,
              onPressed: () {},
              child: Text("Paste", style: boldTextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
