// import 'package:animations/animations.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String searchString;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: OpenContainer<String>(
//             openBuilder: (_, closeContainer) => SearchPage(closeContainer),
//             onClosed: (res) => setState(() {
//               searchString = res;
//             }),
//             tappable: false,
//             closedBuilder: (_, openContainer) => SearchBar(
//               searchString: searchString,
//               openContainer: openContainer,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SearchBar extends StatelessWidget {
//   const SearchBar(
//       {Key, @required this.searchString, @required this.openContainer})
//       : super(key: key);

//   final String searchString;
//   final VoidCallback openContainer;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       elevation: 3,
//       borderRadius: BorderRadius.circular(5),
//       child: InkWell(
//         onTap: openContainer,
//         child: Container(
//           padding: EdgeInsets.all(10),
//           color: Colors.white,
//           child: Row(
//             children: [
//               Icon(Icons.search),
//               SizedBox(width: 10),
//               searchString != null
//                   ? Expanded(child: Text(searchString))
//                   : Spacer(),
//               Icon(Icons.mic),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SearchPage extends StatelessWidget {
//   const SearchPage(
//     this.onClose, {
//     Key key,
//   }) : super(key: key);

//   final void Function({String returnValue}) onClose;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 2),
//                     spreadRadius: 0,
//                     blurRadius: 1,
//                     color: Colors.black26,
//                   )
//                 ],
//                 color: Colors.white,
//               ),
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.arrow_back),
//                     onPressed: onClose,
//                   ),
//                   Spacer(),
//                   Icon(Icons.mic),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   OutlineButton(
//                     onPressed: () => onClose(returnValue: 'Flutter'),
//                     child: Text('Search: "Flutter"'),
//                   ),
//                   OutlineButton(
//                     onPressed: () => onClose(returnValue: 'Rabbit'),
//                     child: Text('Search: "Rabbit"'),
//                   ),
//                   OutlineButton(
//                     onPressed: () => onClose(returnValue: 'What is the Matrix'),
//                     child: Text('Search: "What is the Matrix"'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(imagelayout());
}

class imagelayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.purple,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List a = [
    "https://5.imimg.com/data5/SELLER/Default/2021/7/ZX/IS/JS/40074507/visiting-card-premium-gloss-quality-single-side-500x500.png",
    "https://i.ibb.co/d09Z0yH/06-Business-Card-link-pages-deleted-page-0001.jpg",
    "https://i.ibb.co/SxmxvGc/06-Business-Card-link-pages-deleted-page-0002.jpg",
    // "https://i.ibb.co/PQnmcM5/06-Business-Card-link-pages-deleted-page-0003.jpg",
    "https://i.ibb.co/7tTZbfM/06-Business-Card-link-pages-deleted-page-0004.jpg",
    "https://i.ibb.co/xmGyJsM/06-Business-Card-link-pages-deleted-page-0005.jpg",
    "https://i.ibb.co/SRv6RNc/06-Business-Card-link-pages-deleted-page-0006.jpg",
    "https://i.ibb.co/R7rdmGz/06-Business-Card-link-pages-deleted-page-0007.jpg",
    "https://i.ibb.co/XyjSMJ9/06-Business-Card-link-pages-deleted-page-0008.jpg",
    "https://i.ibb.co/myfjW4J/06-Business-Card-link-pages-deleted-page-0009.jpg",
    "https://i.ibb.co/YW2mGBZ/06-Business-Card-link-pages-deleted-page-0010.jpg",
    "https://i.ibb.co/ck3fFGz/06-Business-Card-link-pages-deleted-page-0011.jpg",
    "https://i.ibb.co/PWFB4NL/06-Business-Card-link-pages-deleted-page-0012.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Displaying Images"),
      // ),

      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          // return Padding(
          //   padding: EdgeInsets.all(20),
          //   child: Card(
          //     shape: Border.all(
          //       width: 1,
          //     ),
          //     elevation: 0,
          //     color: Colors.black,
          //     child: Column(
          //       children: <Widget>[
          //         Image.network(a[index]),
          //         SizedBox(
          //           width: 1,
          //           height: 5,
          //         ),
          //         // Icon(
          //         //   Icons.favorite,
          //         //   color: Colors.yellow,
          //         //   size: 40,
          //         // ),
          //       ],
          //     ),
          //   ),
          // );

          return Column(children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Center(
                // color: btnColor,

                child: Column(children: <Widget>[
                  Image.network(a[index]),

                  //array list in adding log in array postion rleated code //:

                  // loremIpsum,
                  // style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ]),
              ),
            )
          ]);
        },
        itemCount: a.length,
      ),
    );
  }
}



// Fluttertoast.showToast(
//     msg: "your message",
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM // Also possible "TOP" and "CENTER"
//     backgroundColor: "#e74c3c",
//     textColor: '#ffffff');