import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(12),
        color: Colors.black26,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange,onPrimary: Colors.white),
          child: Text("Buy"),
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.white70,
      // appBar: AppBar(),
      body:  SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              children: [
                Hero(tag: Key(catalog.id.toString()),child: Image.network(catalog.image)),
                SizedBox(height: 10,),
                Text(catalog.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: 5,),
                Text(catalog.desc,style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("\$${catalog.price}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
        ),
      ),
    );
  }
}
