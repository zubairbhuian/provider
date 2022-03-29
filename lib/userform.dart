import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UserForm')),
      body: Center(
          child: Column(
        children: const [
          Text(
            "Hellow",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ],
      )),
    );
  }
}
