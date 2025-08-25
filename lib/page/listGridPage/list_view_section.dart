import 'package:flutter/material.dart';

class ListViewSection extends StatelessWidget{
  const ListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SizedBox( 
      height: 150,
      child: ListView(
        children: [
          ListTile(leading: Icon(Icons.map), title: Text('Map')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
        ],
      ) ,
    );
  }


}