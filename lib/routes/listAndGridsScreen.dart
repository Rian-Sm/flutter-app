import 'package:flutter/material.dart';
import 'package:flutter_demo/page/listGridPage/grid_view_section.dart';
import 'package:flutter_demo/page/listGridPage/list_view_horisontal_section.dart';
import 'package:flutter_demo/page/listGridPage/list_view_section.dart';

class ListAndGridsScreen extends StatelessWidget {
  const ListAndGridsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Column(
        children: [
          ListViewSection(),
          ListViewHorizontalSection(),
          GridViewSection(),
        ],
      ),
    );
  }

}