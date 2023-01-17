import 'package:flutter/material.dart';
import 'package:Visitingcardmaker/home_main.dart';
import 'package:Visitingcardmaker/setting_page/aboutUs.dart';
import 'package:Visitingcardmaker/setting_page/allPremiumAccess.dart';
import 'package:Visitingcardmaker/setting_page/feedBack.dart';
import 'package:Visitingcardmaker/setting_page/moreApps.dart';
import 'package:Visitingcardmaker/setting_page/privacyPolicy.dart';
import 'package:Visitingcardmaker/setting_page/rateUs.dart';
import 'package:Visitingcardmaker/setting_page/share.dart';
import 'package:Visitingcardmaker/setting_page/tutorialVideo.dart';
import 'package:Visitingcardmaker/setting_page/userGuide.dart';

// final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

// class setting extends StatelessWidget {
//   const setting({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: MyWidget(),
//         ),
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       Flexible(
//         fit: FlexFit.tight,
//         flex: 2,
//         child: Container(color: Colors.green, child: Text("Setting")),
//       ),
//     ]);
//   }
// }

// class settingss extends StatelessWidget {
//   final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: HomeScreen(),
//         ),
//       ),
//     );
//   }
// }

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
        ),
        title: const Text('Setting'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.only(left: 10),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Account',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 103, 98, 98)),
                  )),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => slidercurser(),
                  ),
                );
              },
              child: Container(
                height: 50,

                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 224, 222, 222),
                        blurRadius: 1.0,
                      ),
                    ]),
                // color: Color.fromARGB(255, 105, 104, 100),
                padding: EdgeInsets.only(left: 30),
                margin: EdgeInsets.all(5),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'All Premium Access',
                      style: TextStyle(
                          letterSpacing: 0.5, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape
                      .rectangle, // BoxShape.circle or BoxShape.retangle
                  //color: const Color(0xFF66BB6A),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 224, 222, 222),
                      blurRadius: 1.0,
                    ),
                  ]),
              padding: EdgeInsets.only(left: 30),
              margin: EdgeInsets.all(0.5),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enable Notification',
                    style: TextStyle(
                        letterSpacing: 0.5, fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 10),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'How to Use',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 103, 98, 98)),
                  )),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => userGuide(),
                  ),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ]),
                padding: EdgeInsets.only(left: 30),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'User Guide',
                      style: TextStyle(
                          letterSpacing: 0.5, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tutorialVideo(),
                  ),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ]),
                padding: EdgeInsets.only(left: 30),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Tutorial Video',
                      style: TextStyle(
                          letterSpacing: 0.5, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 10),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Support & Feedback',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 103, 98, 98)),
                  )),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => rateUs(),
                  ),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ]),
                padding: EdgeInsets.only(left: 30),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Rate Use',
                      style: TextStyle(
                          letterSpacing: 0.5, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => feedBack(),
                  ),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ]),
                padding: EdgeInsets.only(left: 30),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Feedback',
                      style: TextStyle(
                          letterSpacing: 0.5, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Container(
              height: 50,
              // color: Color.fromARGB(255, 105, 104, 100),

              padding: EdgeInsets.only(left: 10),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'More About us',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 103, 98, 98)),
                  )),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => aboutus(),
                  ),
                );
              },
              child: Container(
                height: 50,
                // color: Color.fromARGB(255, 105, 104, 100),
                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ]),

                padding: EdgeInsets.only(left: 30),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About us',
                    style: TextStyle(
                        letterSpacing: 0.5, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => share(),
                  ),
                );
              },
              child: Container(
                height: 50,
                // color: Color.fromARGB(255, 105, 104, 100),
                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ]),
                padding: EdgeInsets.only(left: 30),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Share',
                      style: TextStyle(
                          letterSpacing: 0.5, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => moreApps(),
                  ),
                );
              },
              child: Container(
                height: 50,
                // color: Color.fromARGB(255, 105, 104, 100),
                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ]),
                padding: EdgeInsets.only(left: 30),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'More Apps',
                      style: TextStyle(
                          letterSpacing: 0.5, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                // print("All Premium Access._click_able!!!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => privacyPolicy(),
                  ),
                );
              },
              child: Container(
                height: 50,

                // color: Color.fromARGB(255, 54, 53, 50),
                decoration: BoxDecoration(
                    shape: BoxShape
                        .rectangle, // BoxShape.circle or BoxShape.retangle
                    //color: const Color(0xFF66BB6A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                      ),
                    ]),
                padding: EdgeInsets.only(left: 30),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                          // color: Color.fromARGB(255, 252, 252, 255),
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const CardExamplesApp());
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        // appBar: AppBar(title: const Text('Card Examples')),
        body: Column(
          children: const <Widget>[
            // Spacer(),

            ElevatedCardExample(),
            enableNotification(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        margin: EdgeInsets.only(top: 3),
        child: SizedBox(
          width: 400,
          height: 40,
          child: Center(child: Text('ALL Premium Access')),
        ),
      ),
    );
  }
}

class enableNotification extends StatelessWidget {
  const enableNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        margin: EdgeInsets.only(top: 3, left: 5),
        // margin: const EdgeInsets.only(
        //   left: 40,
        //   top: 20,
        //   right: 40,
        //   bottom: 20,
        // ),
        child: SizedBox(
          width: 400,
          height: 40,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text('Enable Notification'),
          ),
        ),
      ),
    );
  }
}
