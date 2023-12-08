import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/components/CSCommonFileComponents.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSDashboardScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSOfflineScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSPhotosScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSSettingScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSUpgradeAccountScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSConstants.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSImages.dart';

class CSDataModel {
  String fileUrl;
  String? fileName;
  bool? isFileSelect;
  bool isDownload;
  bool isStared;
  bool isFolder;
  bool isShared;

  CSDataModel(
      {this.fileUrl = CSDefaultImg,
      this.fileName,
      this.isFileSelect = false,
      this.isDownload = false,
      this.isShared = false,
      this.isStared = false,
      this.isFolder = false});
}

List<CSDataModel> getFileSharingData() {
  List<CSDataModel> _dataModel = [];

  _dataModel.add(CSDataModel(
      fileName: "File To Share",
      fileUrl: "lib/Screen/UI_Screen/Expensa_Apps/assets/img/logoAppbar.png",
      isStared: true,
      isDownload: true));
  _dataModel.add(
      CSDataModel(fileName: "JeffDev", fileUrl: CSFolderIcon, isFolder: true));

  return _dataModel;
}

class CSDrawerModel {
  String? title;
  IconData? icon;
  Widget? goto;
  bool isSelected;

  CSDrawerModel({this.title, this.icon, this.goto, this.isSelected = false});
}

List<CSDrawerModel> getCSDrawer() {
  List<CSDrawerModel> _drawerModel = [];
  _drawerModel.add(CSDrawerModel(
      title: "Home", icon: Icons.home, goto: CSDashboardScreen()));
  _drawerModel.add(CSDrawerModel(
      title: "Files",
      icon: Icons.folder,
      goto: CSCommonFileComponents(appBarTitle: CSAppName)));
  _drawerModel.add(CSDrawerModel(
      title: "Photos", icon: Icons.photo, goto: CSPhotosScreen()));
  _drawerModel.add(CSDrawerModel(
      title: "Offline", icon: Icons.offline_bolt, goto: CSOfflineScreen()));
  //_drawerModel.add(CSDrawerModel(title: "Notification", icon: Icons.notifications,goto: SizedBox()));
  _drawerModel.add(CSDrawerModel(
      title: "Upgrade Account",
      icon: Icons.upgrade,
      goto: CSUpgradeAccountScreen()));
  _drawerModel.add(CSDrawerModel(
      title: "Setting", icon: Icons.settings, goto: CSSettingScreen()));

  return _drawerModel;
}
