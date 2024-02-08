import 'package:flutter/material.dart';
import 'package:wedemy/splash.dart';
import 'signup.dart';
import 'login.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const splash()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeDemy'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Welcome Students",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),

              const Text(
                "Your future depends on You",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: const BoxDecoration(
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
                      Navigator.push(context,MaterialPageRoute( builder: (context) => LoginPage()));
                    },
                    color:Colors.blue[800],
                    shape: RoundedRectangleBorder(
                        side:const BorderSide(
                          color:Colors.blue,
                        ),
                        borderRadius:BorderRadius.circular(50)

                    ),
                    child:const Text(
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
                        side:const BorderSide(
                          color:Colors.blue,
                        ),
                        borderRadius:BorderRadius.circular(50)

                    ),
                    child:const Text(
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
class SimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Page'),
      ),
      body: const Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}