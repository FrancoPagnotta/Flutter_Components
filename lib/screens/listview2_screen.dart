import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Mega Man',
    'Super Smash',
    'Metal Gear',
    'Final Fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: ((context, index) => ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
            )),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
