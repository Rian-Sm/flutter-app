import 'package:flutter/material.dart';

class GridViewSection extends StatelessWidget {
  const GridViewSection({super.key});


  @override
  Widget build(BuildContext context) {
    return 
    
    SizedBox( 
      height: 250,
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        children: List.generate(10, (index){
          return Center(child: Text('Item $index'),);
        })
      )
    );
  }
}