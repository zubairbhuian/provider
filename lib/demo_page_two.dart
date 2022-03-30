import 'package:flutter/material.dart';

class DemoPageTwo extends StatelessWidget {
  const DemoPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("This is Page One")),
      body: const Center(child: Text("Demo")),
    );
  }
}
