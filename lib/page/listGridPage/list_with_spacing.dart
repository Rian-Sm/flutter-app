import 'package:flutter/material.dart';

class ListWithSpacing extends StatelessWidget {
  const ListWithSpacing({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      
    height: 150,
    child: 
    LayoutBuilder(builder: 
      (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  CardWidget(text: 'item 1 '),
                  Spacer(),
                  CardWidget(text: 'item 2 '),
                  Expanded(child: CardWidget(text: 'Item 3')),
                  ],
                ),
              )
            )
          );
        }
      )
    );
  }
}


class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 75,
        child: Center(child: Text(text)),
      )
    );
  } 
}

