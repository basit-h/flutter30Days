import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 5'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(height: 150, width: 150, color: Colors.blue),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(height: 100, width: 100, color: Colors.red),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(height: 100, width: 100, color: Colors.red),
          ),
          Positioned(
            bottom: 70,
            top: 70,
            left: 70,
            right: 70,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Icon(Icons.call, size: 70),
            ),
          ),
          // Positioned.fill(
          //     child: Container(height: 50, width: 50, color: Colors.orange)),
        ],
      ),
    );
  }
}
