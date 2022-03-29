import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_irebase2/userform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MainBody());
  }
}

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hellow",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("+"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (_) => const UserForm()));
        },
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
