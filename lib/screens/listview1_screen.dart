import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Mega Man', 'Super Smash', 'Metal Gear'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(
        children: [...options.map((option) => ListTile(title: Text(option)))],
      ),
    );
  }
}
