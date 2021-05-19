import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          minLeadingWidth: 100,
          // onTap: () {
          //   print("${item.name} pressed");
          // },
          leading: Hero(tag: Key(item.id.toString()),child: Image.network(item.image)),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
            textScaleFactor: 1.2,
          ),
        ),
      ),
    );
  }
}
