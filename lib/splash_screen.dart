import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:Visitingcardmaker/Testing_layout.dart';
// import 'package:Visitingcardmaker/home_main.dart';
// import 'package:Visitingcardmaker/main.dart';

import 'package:VisitingCardMaker/Testing_layout.dart';
import 'package:VisitingCardMaker/home_main.dart';
import 'package:VisitingCardMaker/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 48, 67),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topRight,
        //       end: Alignment.bottomLeft,
        //       colors: [
        //         Color.fromARGB(0, 4, 9, 17),
        //         Color.fromARGB(0, 7, 22, 46),
        //       ]),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/visitingcard_logo.png',
                  height: 200.0,
                  width: 200.0,
                ),
                Text(
                  "VisitingCardMaker",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(255, 35, 48, 67)),
            ),
          ],
        ),
      ),
    );
  }
}
