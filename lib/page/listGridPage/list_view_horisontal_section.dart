import 'package:flutter/material.dart';

class ListViewHorizontalSection extends StatelessWidget{
  const ListViewHorizontalSection({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SizedBox( 
      height: 100,
      child: ListView(
      scrollDirection: Axis.horizontal, // ListView Horizontal
        children: [
            Container(width: 200, color: Colors.red),
            Container(width: 200, color: Colors.blue),
            Container(width: 200, color: Colors.yellow),
            Container(width: 200, color: Colors.green),
        ],
      ) ,
    );
  }
}