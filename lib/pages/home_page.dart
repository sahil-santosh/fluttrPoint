import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((e) => Item.fromMap(e)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: MyDrawer(),
      body: Material(
        child: (CatalogModel.items.isNotEmpty) ? ListView.builder(
          itemCount: CatalogModel.items.length,
          // itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
              // item: dummyList[index],
            );
          },
        ): Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}
