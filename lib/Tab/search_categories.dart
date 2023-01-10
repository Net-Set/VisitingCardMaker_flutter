import 'package:flutter/material.dart';

void main() {
  runApp(const searchcategories());
}

class searchcategories extends StatelessWidget {
  const searchcategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GFG(),
    );
  }
}

// This is the widget that will be shown
// as the homepage of your application.
class GFG extends StatefulWidget {
  const GFG({Key? key}) : super(key: key);

  @override
  State<GFG> createState() => _GFGState();
}

// class _GFGState extends State<GFG> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class GFG extends StatefulWidget {
//   const GFG({Key? key}) : super(key: key);

//   @override
//   State<GFG> createState() => _GFGState();
// }

class _GFGState extends State<GFG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
        ),
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Create Your Own ",
    "New Categories ",
    "Creative",
    "Simple",
    "Modern",
    "Colorful",
    "High School",
    "Freelance",
    "Engineer"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];

        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,

      itemBuilder: (context, index) {
        var result = matchQuery[index];
        Card(
          child: ListTile(
            title: Text('One-line with leading widget'),
          ),
        );
        return ListTile(
          title: Text(result),
        );
      },

      // children: const <Widget>[
      //   Card(child: ListTile(title: Text('One-line ListTile'))),
      //   Card(
      //     child: ListTile(
      //       // leading: FlutterLogo(),

      //       title: Text('One-line with leading widget'),
      //     ),
      //   ),
      // ],
    );
  }
}

//second layout code
// import 'package:flutter/material.dart';

// void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          listTileTheme: const ListTileThemeData(
        textColor: Colors.white,
      )),
      home: Scaffold(
        appBar: AppBar(title: const Text('Search')),
        body: const LisTileExample(),
      ),
    );
  }
}

class LisTileExample extends StatefulWidget {
  const LisTileExample({super.key});

  @override
  State<LisTileExample> createState() => _LisTileExampleState();
}

class _LisTileExampleState extends State<LisTileExample>
    with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final AnimationController _sizeController;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _sizeController = AnimationController(
      duration: const Duration(milliseconds: 850),
      vsync: this,
    )..repeat(reverse: true);

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );

    _sizeAnimation = CurvedAnimation(
      parent: _sizeController,
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Hero(
          tag: 'ListTile-Hero',
          // Wrap the ListTile in a Material widget so the ListTile has someplace
          // to draw the animated colors during the hero transition.
          child: Material(
            child: ListTile(
              title: const Text('ListTile with Hero'),
              subtitle: const Text('Tap here for Hero transition'),
              tileColor: Colors.cyan,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(title: const Text('ListTile Hero')),
                      body: Center(
                        child: Hero(
                          tag: 'ListTile-Hero',
                          child: Material(
                            child: ListTile(
                              title: const Text('ListTile with Hero'),
                              subtitle: const Text('Tap here to go back'),
                              tileColor: Colors.blue[700],
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ),
        // FadeTransition(
        //   opacity: _fadeAnimation,
        //   // Wrap the ListTile in a Material widget so the ListTile has someplace
        //   // to draw the animated colors during the fade transition.
        //   child: const Material(
        //     child: ListTile(
        //       title: Text('ListTile with FadeTransition'),
        //       selectedTileColor: Colors.green,
        //       selectedColor: Colors.white,
        //       selected: true,
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 100,
        //   child: Center(
        //     child: SizeTransition(
        //       sizeFactor: _sizeAnimation,
        //       axisAlignment: -1.0,
        //       // Wrap the ListTile in a Material widget so the ListTile has someplace
        //       // to draw the animated colors during the size transition.
        //       child: const Material(
        //         child: ListTile(
        //           title: Text('ListTile with SizeTransition'),
        //           tileColor: Colors.red,
        //           minVerticalPadding: 25.0,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
