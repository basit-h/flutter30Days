import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 1'),
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
            'Flutter 30 days challenge',
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
