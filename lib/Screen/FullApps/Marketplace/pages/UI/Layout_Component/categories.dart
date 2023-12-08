import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesList extends StatefulWidget {
  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  EntryItem(data[index]),
              itemCount: data.length,
            ),
          ),

          /// Get a class AppbarGradient
          /// This is a Appbar in home activity
          Container(
            height: 200.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: statusBarHeight),
                  height: 58.0 + statusBarHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(

                      /// gradient in appbar
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFFA3BDED),
                            const Color(0xFF6991C7),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ),
                      Center(
                          child: Text(
                        "Category",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w600),
                      )),
                      Text(
                        "nsddsa",
                        style: TextStyle(color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRowItems({IconData? icon, required String text}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(text),
      onTap: () {},
    );
  }
}

class Entry {
  Entry(this.title, this.iconData, [this.children = const <Entry>[]]);

  final String title;
  final IconData? iconData;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Electronics',
    FontAwesomeIcons.mobile,
    <Entry>[
      Entry(
        'Item A0.1',
        null,
      ),
      Entry(
        'Item A0.1',
        null,
      ),
      Entry(
        'Item A0.1',
        null,
      ),
    ],
  ),
  Entry(
    'Clothing',
    FontAwesomeIcons.shoppingBag,
    <Entry>[
      Entry(
        'Item A0.1',
        null,
      ),
      Entry(
        'Item A0.1',
        null,
      ),
      Entry(
        'Item A0.1',
        null,
      ),
    ],
  ),
  Entry(
    'Hobbies',
    FontAwesomeIcons.hands,
    <Entry>[
      Entry(
        'Item A0.1',
        null,
      ),
      Entry(
        'Item A0.1',
        null,
      ),
      Entry(
        'Item A0.1',
        null,
      ),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Row(
        children: <Widget>[
          Icon(
            root.iconData,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(root.title),
          )
        ],
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
