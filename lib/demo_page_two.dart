import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_irebase2/mydata.dart';

class DemoPageTwo extends StatelessWidget {
  const DemoPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("This is Page Two")),
        body: Center(
            child: Text("${context.watch<DemoData>().count}",
                style: Theme.of(context).textTheme.headline4)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<DemoData>().incriment();
          },
          child: const Icon(Icons.add),
        ));
  }
}
