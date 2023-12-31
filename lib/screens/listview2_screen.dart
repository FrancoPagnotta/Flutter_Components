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
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: ((context, index) => ListTile(
              title: Text(options[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () {
                final game = options[index];
                print(game);
              },
            )),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
