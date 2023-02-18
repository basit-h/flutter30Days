import 'package:flutter/material.dart';

import 'day8.dart';

class HomePage extends StatelessWidget {
  final UserData data;
  const HomePage({required this.data, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 1'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.width * .5,
          padding: EdgeInsets.symmetric(
            horizontal: (MediaQuery.of(context).size.width / 100) * 3,
            vertical: (MediaQuery.of(context).size.height / 100) * 2,
          ),
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          alignment: Alignment.center,
          child: Text(
            'user name: ${data.userName}, user id: ${data.id}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: (MediaQuery.of(context).size.width / 100) * 8,
              color: Colors.red,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
