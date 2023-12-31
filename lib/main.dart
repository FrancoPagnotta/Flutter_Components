import 'screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const CardScreen(),
      initialRoute: '/home',
      routes: {
        '/home': (BuildContext context) => const HomeScreen(),
        '/listView1': (BuildContext context) => const ListView1Screen(),
        '/listView2': (BuildContext context) => const ListView2Screen(),
        '/alert': (BuildContext context) => const AlertScreen(),
        '/card': (BuildContext context) => const CardScreen(),
      },
    );
  }
}
