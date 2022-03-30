import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_irebase2/demo_page_one.dart';
import 'package:test_irebase2/demo_page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text("Demo"),
        const SizedBox(
          height: 20,
        ),
        Row(children: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => const DemoPageOne()));
              },
              icon: const Icon(Icons.arrow_back)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => const DemoPageTwo()));
              },
              icon: const Icon(Icons.arrow_forward)),
        ])
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
