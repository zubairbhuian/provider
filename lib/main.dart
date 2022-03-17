import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: const Text("User Informatoin")),
        body: UserForm(),
      ),
    );
  }
}

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  bool isPasswardShow = true;
  // textController
 final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text("Email")),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _passController,
            obscureText: isPasswardShow,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: const Text("Password"),
                suffix: InkWell(
                  child: isPasswardShow == true
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onTap: () {
                    setState(() {
                      isPasswardShow = !isPasswardShow;
                    });
                  },
                )),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text("Submit"))
        ],
      ),
    );
  }
}
