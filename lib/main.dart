import 'package:flutter/material.dart';
import 'package:uchat/pages/login_page.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

void main() {
  ZIMKit().init(
    appID: 1339173987,
    appSign: '01168545e4dd05757e5b80f56ab0e2ff3587abac5d2c16b73910127867772b99',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'U Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
