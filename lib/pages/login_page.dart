import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userId = TextEditingController();
  final username = TextEditingController();

  void login() async {
    await ZIMKit().connectUser(id: userId.text, name: username.text);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              TextFormField(
                controller: userId,
                decoration: const InputDecoration(
                  labelText: 'User Id',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: username,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  login();
                  // await ZIMKit()
                  //     .connectUser(id: userId.text, name: username.text);
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (context) => const HomePage(),
                  //   ),
                  // );
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
