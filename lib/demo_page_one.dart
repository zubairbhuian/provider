import 'package:flutter/material.dart';

class DemoPageOne extends StatelessWidget {
  const DemoPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("This is Page One")),
      body: Center(
          child: Text(
        "Demo",
        style: Theme.of(context).textTheme.headline4,
      )),
    );
  }
}
