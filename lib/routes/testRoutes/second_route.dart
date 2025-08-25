import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Route')),
      body: Center(
        child: ElevatedButton(
          child: const Text('pop route'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

