import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeDemy'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome Students",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),

              Text(
                "Your future depends on You",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/img.png")
                      )
                  )
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute( builder: (context) => login()));
                    },
                    color:Colors.blue[800],
                    shape: RoundedRectangleBorder(
                        side:BorderSide(
                          color:Colors.blue,
                        ),
                        borderRadius:BorderRadius.circular(50)

                    ),
                    child:Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 25,

                        color: Colors.white,

                      ),
                    ) ,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute( builder: (context) => SignupPage()));
                    },
                    color:Colors.blue[800],
                    shape: RoundedRectangleBorder(
                        side:BorderSide(
                          color:Colors.blue,
                        ),
                        borderRadius:BorderRadius.circular(50)

                    ),
                    child:Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ) ,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
