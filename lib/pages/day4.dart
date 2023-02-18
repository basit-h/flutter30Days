import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Day4 extends StatelessWidget {
  final String name = 'Basit';
  final double age = 25;
  final bool isLight = true;
  const Day4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 4'),
      ),
      body: Column(
        children: [
          const Center(
            child: Icon(
              FontAwesomeIcons.amazon,
              color: Colors.orange,
              size: 90,
            ),
          ),
          Text('Name: $name Age: $age Islight $isLight'),
          const SizedBox(
            height: 50.0,
          ),
          Container(height: 50, width: 100, color: Colors.red),
          Row(
            children: [
              Expanded(
                  child: Container(height: 50, width: 100, color: Colors.red)),
              Container(height: 50, width: 100, color: Colors.green),
            ],
          ),
          Expanded(
              child: Container(height: 50, width: 50, color: Colors.purple)),
        ],
      ),
    );
  }
}
