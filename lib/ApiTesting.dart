// // main.dart
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert'; // for using json.decode()

// void main() {
//   runApp(const apiTesting());
// }

// class apiTesting extends StatelessWidget {
//   const apiTesting({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Hide the debug banner
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       title: 'Kindacode.com',
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // The list that contains information about photos
//   List _loadedPhotos = [];

//   // The function that fetches data from the API
//   Future<void> _fetchData() async {
//     const apiUrl = 'https://jsonplaceholder.typicode.com/photos';

//     final response = await http.get(Uri.parse(apiUrl));
//     final data = json.decode(response.body);

//     setState(() {
//       _loadedPhotos = data;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   title: const Text('Kindacode.com'),
//         // ),
//         body: SafeArea(
//             child: _loadedPhotos.isEmpty
//                 ? Center(
//                     child: ElevatedButton(
//                       onPressed: _fetchData,
//                       child: const Text('Load Photos'),
//                     ),
//                   )
//                 // The ListView that displays photos
//                 : ListView.builder(
//                     itemCount: _loadedPhotos.length,
//                     itemBuilder: (BuildContext ctx, index) {
//                       return ListTile(
//                         leading: Image.network(
//                           _loadedPhotos[index]["thumbnailUrl"],
//                           width: 150,
//                           fit: BoxFit.cover,
//                         ),
//                         title: Text(_loadedPhotos[index]['title']),
//                         subtitle:
//                             Text('Photo ID: ${_loadedPhotos[index]["id"]}'),
//                       );
//                     },
//                   )));
//   }
// }

//second COde

import 'package:flutter/material.dart';
// import 'package:rest_api_example/model/user_model.dart';
// import 'package:rest_api_example/services/api_service.dart';
// import 'package:Visitingcardmaker/model/user_model.dart';
// import 'package:Visitingcardmaker/model/api_service.dart';

import 'package:VisitingCardMaker/model/user_model.dart';

import 'package:VisitingCardMaker/model/api_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('REST API Example'),
      // ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_userModel![index].id.toString()),
                          Text(_userModel![index].username),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_userModel![index].email),
                          Text(_userModel![index].website),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
