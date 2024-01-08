import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> with
    SingleTickerProviderStateMixin{
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => HomePage()),);

  });
}
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 100,

              child: Image.asset('images/img_1.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "WeDemy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 250,
            ),
            const Text("Build your Future",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),)
          ],
        ),
      ),
    );
  }
}
