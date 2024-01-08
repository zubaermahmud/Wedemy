import 'package:flutter/material.dart';

class bookstore extends StatefulWidget {
  const bookstore({super.key});

  @override
  State<bookstore> createState() => _bookstoreState();
}

class _bookstoreState extends State<bookstore> {
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