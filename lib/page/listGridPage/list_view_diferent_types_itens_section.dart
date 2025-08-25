import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class HeadingItem extends ListItem {
  final String heading;

  HeadingItem({required this.heading});
  
  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(heading, style: Theme.of(context).textTheme.headlineSmall);
  
  }
  
  @override
  Widget buildTitle(BuildContext context) {
   return const SizedBox.shrink();
  }

 
}

class MessageItem extends ListItem {
  final String sender;
  final String body;

  MessageItem({required this.sender, required this.body});

  @override
  Widget buildTitle(BuildContext context) {
    return Text(sender);
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(body);
  }
}

final itens = List<ListItem>.generate(
  50,
  (index) => index % 6 == 0
      ? HeadingItem(heading: 'Heading $index')
      : MessageItem(sender: 'Sender $index', body: 'Message body $index'),
);

class ListViewDiferentTypesItensSection extends StatelessWidget {
  const ListViewDiferentTypesItensSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 300,
      child: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          final item = itens[index];
          return ListTile(
          title: item.buildTitle(context),
          subtitle: item.buildSubtitle(context),
        );
      },
    ));
  }
}