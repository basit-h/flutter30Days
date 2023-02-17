import 'package:flutter/material.dart';
import 'package:thirty_days_challenge/pages/tik_tok_ui_example_stack.dart';

import 'pages/day5.dart';
import 'pages/signup_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 30 days chellange',
      home: const TikTokUiExampleStack(),
    );
  }
}
