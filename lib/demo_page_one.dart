import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_irebase2/mydata.dart';

class DemoPageOne extends StatelessWidget {
  const DemoPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("This is Page One")),
      body: Center(
          child: Text(
        "${context.watch<DemoData>().count}",
        style: Theme.of(context).textTheme.headline4,
      )),
    );
  }
}
