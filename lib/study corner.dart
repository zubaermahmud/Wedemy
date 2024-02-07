import 'package:flutter/material.dart';

class studycorner extends StatefulWidget {
  const studycorner({super.key});

  @override
  State<studycorner> createState() => _studycornerState();
}

class _studycornerState extends State<studycorner> {
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
