import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Day 05"),
        ),
        bottomNavigationBar: ButtonBar(
          children: [
            navigationButton(Icons.chevron_left, () {}),
            navigationButton(Icons.chevron_right, () {})
          ],
        ),
        body: Center(
          child: Column(
            children: [Container()],
          ),
        ),
      ),
    );
  }

  Widget navigationButton(IconData icon, Function() onPressed) {
    return IconButton(onPressed: onPressed, icon: Icon(icon));
  }
}
