import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Number : $_counter'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _increase,
              child: const Text('Increase'),
            ),
            ElevatedButton(
              onPressed: _decrease,
              child: const Text('Decrease'),
            ),
            _buildContainerButton(_increaseDouble),
          ],
        ),
      ),
    );
  }

  void _increase() {
    setState(() {
      _counter += 1;
    });
  }

  void _decrease() {
    setState(() {
      _counter -= 1;
    });
  }

  void _increaseDouble() {
    setState(() {
      _counter += 2;
    });
  }

  Widget _buildContainerButton(VoidCallback incrementDouble) {
    return InkWell(
      onTap: incrementDouble,
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.blue,
        ),
        child: const Text(
          'Increment double',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
