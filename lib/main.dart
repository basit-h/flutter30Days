import 'package:flutter/material.dart';

import 'pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 30 days chellange',
      home: SignupPage(),
    );
  }
}
