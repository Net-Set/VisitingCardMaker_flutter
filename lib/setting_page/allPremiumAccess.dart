// import 'package:flutter/material.dart';
// import 'package:resumebuilder/setting/setting.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// void main() => runApp(const allPremiumAccess());

// class allPremiumAccess extends StatelessWidget {
//   const allPremiumAccess({super.key});

//   static const appTitle = 'All Premium Access';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: appTitle,
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(title: appTitle),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         leading: new IconButton(
//             icon: new Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const SecondRoute()),
//               );
//             }),
//       ),
//       body: const Center(
//         child: Text('My Page!'),
//       ),
//       // drawer: Drawer(
//       //   // Add a ListView to the drawer. This ensures the user can scroll
//       //   // through the options in the drawer if there isn't enough vertical
//       //   // space to fit everything.
//       //   child: ListView(
//       //     // Important: Remove any padding from the ListView.
//       //     padding: EdgeInsets.zero,
//       //     children: [
//       //       const DrawerHeader(
//       //         decoration: BoxDecoration(
//       //           color: Colors.blue,
//       //         ),
//       //         child: Text('Drawer Header'),
//       //       ),
//       //       ListTile(
//       //         title: const Text('Item 1'),
//       //         onTap: () {
//       //           // Update the state of the app
//       //           // ...
//       //           // Then close the drawer
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Item 2'),
//       //         onTap: () {
//       //           // Update the state of the app
//       //           // ...
//       //           // Then close the drawer
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }

//second Layout code
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const slider());
}

class slider extends StatelessWidget {
  const slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carousel Slider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: slidercurser(),
    );
  }
}

class slidercurser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Premium Access"),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJF_wqrWdnI6UbAEXUfJWQLOlvC3_6-xUiRQ&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR03uENuZwmJ7fIsEqjI7Vk1OBHQyKCri8ESsMBunmFDlJNxJQymNCToCCrK-cKvM1tduE&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNV3EAjlDKDOGlnWyE6xCmN2JR8YeOc6Bf_A&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNKJOp6f5-p_99ubwPS_3o6wCIJ77_tt4Iyw&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQkysljzsCkeinBQx-xzHLNm59TqTQDdj6rg&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 350.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
