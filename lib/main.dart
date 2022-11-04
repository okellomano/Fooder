import 'package:flutter/material.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fooderlich',
      home: Scaffold(
        appBar: AppBar(title: const Text('Fooderlich')),
        body: const Center(
          child: Text('Get cooking!'),
        ),
      ),
    );
  }
}
