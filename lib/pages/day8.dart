import 'package:flutter/material.dart';
import 'package:thirty_days_challenge/pages/home_page.dart';
import 'package:thirty_days_challenge/pages/login_page.dart';
import 'package:thirty_days_challenge/pages/signup_page.dart';

class UserData {
  final String userName;
  final String id;

  UserData({
    required this.userName,
    required this.id,
  });
}

class Day8 extends StatelessWidget {
  const Day8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 8'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const SignupPage();
                }));
              },
              child: const Text('Sign up'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              child: const Text('Sign in'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                '/home',
                arguments: UserData(userName: 'Basit', id: '117'),
              ),
              child: const Text('Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
