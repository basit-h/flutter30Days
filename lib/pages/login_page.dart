import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double height = 120;
  double width = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                setState(
                  () {
                    height = 140;
                    width = 140;
                    // height = 120;
                    // width = 120;
                  },
                );
              },
              onTapCancel: () {
                setState(() {
                  height = 120;
                  width = 120;
                });
              },
              onFocusChange: (val) {
                setState(() {
                  height = 120;
                  width = 120;
                });
              },
              child: AnimatedContainer(
                height: height,
                width: width,
                duration: const Duration(milliseconds: 600),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                curve: Curves.bounceInOut,
                child: Image.asset(
                  'assets/bird.png',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Login to your account',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter you email',
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              height: 55.0,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            const Text(
              'I forgot my password',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
