import 'package:flutter/material.dart';
import 'package:thirty_days_challenge/pages/counter_app.dart';
import 'package:thirty_days_challenge/pages/day8.dart';
import 'package:thirty_days_challenge/pages/home_page.dart';
import 'package:thirty_days_challenge/pages/login_page.dart';
import 'package:thirty_days_challenge/pages/on_generate_route.dart';
import 'package:thirty_days_challenge/pages/tik_tok_ui_example_stack.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 30 days challenge',
      initialRoute: '/',
      // routes: {
      //   '/': (context) => HomePage(),
      //   'day8': (context) => const Day8(),
      // },
      onGenerateRoute: OnGenerateRoute.route,
    );
  }
}
