import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:Visitingcardmaker/ApiTesting.dart';
// import 'package:Visitingcardmaker/Tab/categories.dart';
// import 'package:Visitingcardmaker/Tab/feature.dart';
// import 'package:Visitingcardmaker/Tab/list_categories.dart';
// import 'package:Visitingcardmaker/Tab/mydesign.dart';
// import 'package:Visitingcardmaker/Tab/search_categories.dart';
// import 'package:Visitingcardmaker/Testing_layout.dart';
// import 'package:Visitingcardmaker/resume_layout.dart';
// import 'package:Visitingcardmaker/setting/setting.dart';

import 'package:VisitingCardMaker/ApiTesting.dart';
import 'package:VisitingCardMaker/Tab/categories.dart';
import 'package:VisitingCardMaker/Tab/categories.dart';
import 'package:VisitingCardMaker/Tab/feature.dart';
import 'package:VisitingCardMaker/Tab/list_categories.dart';
import 'package:VisitingCardMaker/Tab/mydesign.dart';

import 'package:VisitingCardMaker/Tab/search_categories.dart';
import 'package:VisitingCardMaker/Testing_layout.dart';
import 'package:VisitingCardMaker/resume_layout.dart';
import 'package:VisitingCardMaker/setting/setting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: TabBarDemo(),
        ),
      ),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'FEATURED',
                    // icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: 'CATEGORIES',
                    // icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: 'MY DESIGNS',
                    // icon: Icon(Icons.home),
                  ),
                ],
              ),
              title: new Center(
                  child: new Text('Visiting Card_Maker',
                      textAlign: TextAlign.center)),
              leading: GestureDetector(
                // onTap: () {},
                child: IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      log("IconButton_Click_Event(Splash_Screen)");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      ); // add custom icons also
                    }),
              ),
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.ads_click,
                        size: 26.0,
                      ),
                    )),
                // Padding(
                //     padding: EdgeInsets.only(right: 20.0),
                //     child: GestureDetector(
                //       onTap: () {},
                //     )),
                //       child: Icon(Icons.settings),
              ],
            ),
            body: TabBarView(
              children: [
                // MyHomePage(),
                Home(),
                searchcategories(),
                mydesign(),
              ],
            )),
      ),
    );
  }
}
