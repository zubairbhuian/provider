import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(title: const Text("My App")),
        body: DemoClass(),
      )),
    );
  }
}

class DemoClass extends StatelessWidget {
  const DemoClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          color: Colors.red,
          child: const Text("demo"),
        ),
      );
}
