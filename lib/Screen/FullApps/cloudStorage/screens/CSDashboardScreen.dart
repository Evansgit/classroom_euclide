import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/components/CSDrawerComponents.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/components/CSSearchBar.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSRecentScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSSharedScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSStarredScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSColors.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSConstants.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSWidgets.dart';

import '../components/CSFileAndFolderEditingComponents.dart';

class CSDashboardScreen extends StatefulWidget {
  static String tag = '/CSDashboardScreen';

  @override
  CSDashboardScreenState createState() => CSDashboardScreenState();
}

class CSDashboardScreenState extends State<CSDashboardScreen> {
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: black),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: black),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CSSearchBar(
                    hintText: "Searching in $CSAppName",
                    listData: getFileSharingList),
              );
            },
          )
        ],
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          title: Text("Cloud Data", style: boldTextStyle(size: 20)),
        ),
      ),
      drawer: CSDrawerComponents(),
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          floatHeaderSlivers: true,
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.blueAccent,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: primaryTextStyle(size: 18),
                    isScrollable: true,
                    tabs: [
                      Tab(text: "Recent"),
                      Tab(text: "Shared"),
                      Tab(text: "Starred"),
                      Tab(text: "Empty"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              CSRecentScreen(),
              CSSharedScreen(),
              CSStarredScreen(),
              Container()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showBottomSheetForAddingData(context);
          setState(() {});
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: CSDarkBlueColor,
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: context.cardColor,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      width: double.infinity,
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
