import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_irebase2/main.dart';

class UserForm extends StatelessWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var values = Provider.of<Counter>(context);
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(values.count.toString()),
      ],
    ));
  }
}
