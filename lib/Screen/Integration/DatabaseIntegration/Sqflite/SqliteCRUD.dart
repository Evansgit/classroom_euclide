import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Item.dart';
import 'dbhelper.dart';

class SqliteCRUD extends StatefulWidget {
  @override
  _SqliteCRUDState createState() => _SqliteCRUDState();
}

class _SqliteCRUDState extends State<SqliteCRUD> {
  final dbHelper = DatabaseHelper.instance;

  List<Item> items = [];
  List<Item> itemsByName = [];

  //controllers used in insert operation UI
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  //controllers used in query operation UI
  TextEditingController queryController = TextEditingController();

  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      new GlobalKey<ScaffoldMessengerState>();

  void _showMessageInScaffold(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  void initState() {
    _queryAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.blueAccent),
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.blueAccent,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            tabs: [
              Tab(
                text: "Create",
              ),
              Tab(
                text: "Read",
              ),
              /* Tab(
                text: "Query",
              ), */
              Tab(
                text: "Update",
              ),
              Tab(
                text: "Delete",
              ),
            ],
          ),
          title: Text(
            'Sqflite Database',
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      controller: priceController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Quantity Item',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Input'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                    onPressed: () {
                      if (nameController.text.trim().isEmpty ||
                          priceController.text.trim().isEmpty)
                        _showMessageInScaffold("Fill all filed");
                      else {
                        String name = nameController.text;
                        int price = int.parse(priceController.text);
                        _insert(name, price);
                      }
                    },
                  ),
                ],
              ),
            ),
            itemListWidget(0),
            itemListWidget(1),
            itemListWidget(2),
          ],
        ),
      ),
    );
  }

  Widget itemListWidget(int type) {
    return Container(
      child: Column(
        children: [
          if (items.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        "No.",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      )),
                  Expanded(
                      flex: 4,
                      child: Text(
                        "Name",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      )),
                  Expanded(
                      flex: 3,
                      child: Text(
                        "Quantity",
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      )),
                  if (type != 0)
                    Expanded(
                      flex: 1,
                      child: Text(""),
                    ),
                ]),
              ),
            ),
          if (items.isNotEmpty) Divider(),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  Item item = items[index];

                  TextEditingController nameController =
                      TextEditingController(text: item.itemname);
                  TextEditingController priceController =
                      TextEditingController(text: item.itemprice.toString());

                  return Column(
                    children: [
                      Row(children: [
                        Expanded(
                            flex: 1,
                            child: Text("${index + 1}",
                                style: Theme.of(context).textTheme.titleMedium)),
                        Expanded(
                            flex: 4,
                            child: Text(item.itemname!,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleMedium)),
                        Expanded(
                            flex: 3,
                            child: Text(item.itemprice.toString(),
                                textAlign: TextAlign.end,
                                style: Theme.of(context).textTheme.titleMedium)),
                        if (type != 0)
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.centerRight,
                              icon: Icon(
                                type == 1 ? Icons.edit : Icons.delete_forever,
                                color: Colors.blueAccent,
                              ),
                              onPressed: () {
                                if (type == 1) {
                                  item.isexpand = !item.isexpand;
                                  setState(() {
                                    items[index] = item;
                                  });
                                } else {
                                  _delete(item.id);
                                  items.removeAt(index);
                                  setState(() {});
                                }
                              },
                            ),
                          ),
                      ]),
                      if (item.isexpand)
                        Column(children: [
                          TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Item Name',
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            controller: priceController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Item Quantity',
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent),
                            child: Text('Update Item'),
                            onPressed: () async {
                              if (nameController.text.trim().isEmpty ||
                                  priceController.text.trim().isEmpty)
                                _showMessageInScaffold("Fill all filed");
                              else {
                                String name = nameController.text;
                                String price = priceController.text;
                                Item newitem = Item(item.id, name, price);
                                await _update(newitem);
                                items[index] = newitem;
                                setState(() {});
                              }
                            },
                          ),
                          Divider(
                            color: Colors.black12,
                          ),
                        ]),
                    ],
                  );
                }),
          ),
          ElevatedButton(
            child: Text('Refresh'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            onPressed: () {
              setState(() {
                _queryAll();
              });
            },
          )
        ],
      ),
    );
  }

  void _insert(name, price) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnPrice: price
    };
    Item item = Item.fromMap(row);
    final id = await dbHelper.insert(item);

    priceController.clear();
    nameController.clear();
    Map? singlerow = await dbHelper.queryRowById(id);

    if (singlerow != null) {
      items.add(Item.fromMap(row));
      setState(() {});
    }
    _showMessageInScaffold('inserted row id: $id');
  }

  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    items.clear();
    allRows.forEach((row) => items.add(Item.fromMap(row)));
    _showMessageInScaffold('Query done.');
    setState(() {});
  }

  void _query(name) async {
    final allRows = await dbHelper.queryRows(name);
    itemsByName.clear();
    allRows.forEach((row) => itemsByName.add(Item.fromMap(row)));
  }

  _update(Item item) async {
    final rowsAffected = await dbHelper.update(item);
    _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}
