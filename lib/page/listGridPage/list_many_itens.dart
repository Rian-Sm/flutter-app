import 'package:flutter/material.dart';

final  List<String> items = List<String>.generate(10000, (i) => 'Item $i');

class ListManyItens extends StatelessWidget {
  const ListManyItens({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(title: Text(items.first)),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }

}