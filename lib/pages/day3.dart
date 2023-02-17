import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  const Day3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: 160,
            color: Colors.red,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.green,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.blue,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 160,
                width: 160,
                color: Colors.amber,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.purple,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
