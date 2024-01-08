import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeDemy'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}
