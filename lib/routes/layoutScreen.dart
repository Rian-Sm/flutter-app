import 'package:flutter/material.dart';
import 'package:flutter_demo/page/homePage/buttons_section.dart';
import 'package:flutter_demo/page/homePage/image_section.dart';
import 'package:flutter_demo/page/homePage/text_section.dart';
import 'package:flutter_demo/page/homePage/title_section.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    return const SingleChildScrollView(
      child: Column(
        children: [
          ImageSection(image: 'assets/chipazineBananine.jpeg'),
          Titlesection(name: 'Chipanzine Bananine', location: 'Amazonia'),
          ButtonsSection(),
          TextSection(description: 'Chimpanzini Bananini! wa wa wa! Bananuchi monkey monkey monkey yuchi! or Chimpanzini Cocosini? Wa wa wa! Boop boop badapim. Coconuchi monkey monkey monkey yuchi! or Chimpanzini Ananasini? wa wa wa!')
        ],
      ),
    );
  }

}