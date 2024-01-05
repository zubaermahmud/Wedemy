import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'sign up.dart'; // Import the file where SignUpPage is defined

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignUpPage(), // Set SignUpPage as the initial route
    );
  }
}
