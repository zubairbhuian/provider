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
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Demo",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => const DemoPageOne()));
                },
                child: const Icon(Icons.arrow_back)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => const DemoPageTwo()));
                },
                child: const Icon(Icons.arrow_forward)),
          ])
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
