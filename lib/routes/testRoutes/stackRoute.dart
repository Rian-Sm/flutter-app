import 'package:flutter/material.dart';

class Stackroute extends StatelessWidget {
  const Stackroute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack route')),
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

