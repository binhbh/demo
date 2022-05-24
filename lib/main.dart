import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:flutter_demo/data.dart';
import 'package:flutter_demo/login.dart';
import 'dart:ui';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyStatefulWidget1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// class Splash2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 6,
//       navigateAfterSeconds: new SecondScreen(),
//       title: new Text('GeeksForGeeks',textScaleFactor: 2,),
//       image: new Image.network('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
//       loadingText: Text("Loading"),
//       photoSize: 100.0,
//       loaderColor: Colors.blue,
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//           child:Text("Home page",textScaleFactor: 2,)
//       ),
//     );
//   }
// }
// class Splash3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//           child:Text("Home page",textScaleFactor: 2,)
//       ),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, dynamic> _allWords = jsonDecode(data);
  late List<String> _allKeys;

  @override
  void initState() {
    super.initState();
    _allKeys = _allWords.keys.toList();
  }

  @override
  Widget build(BuildContext context) {
    print(_allWords['abacus']![0]);
    return Scaffold(
        drawer: NavigationDrawerWidget(), //drawer
        body: NestedScrollView(
          // Setting floatHeaderSlivers to true is required in order to float
          // the outer slivers over the inner scrollable.
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: const Text('Floating Nested SliverAppBar'),
                centerTitle: true,
                floating: true,
                backgroundColor: Colors.yellow,
                forceElevated: innerBoxIsScrolled,
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    tooltip: 'Go to the next page',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Scaffold(
                              backgroundColor: Colors.white,
                              extendBodyBehindAppBar: true,
                              body: NestedScrollView(
                                floatHeaderSlivers: true,
                                headerSliverBuilder: (BuildContext context,
                                    bool innerBoxIsScrolled) {
                                  return <Widget>[
                                    SliverAppBar(
                                      title: const Text('add'),
                                      centerTitle: true,
                                      floating: true,
                                      flexibleSpace: ClipRRect(
                                        // child: Container(
                                        //   decoration: BoxDecoration(
                                        //   image: DecorationImage(
                                        //     image: AssetImage('https://t3.ftcdn.net/jpg/02/10/16/80/360_F_210168041_TLGxhXJIRsndgShDagj3ZeuCj9nS1fZK.jpg'),
                                        //     fit: BoxFit.fill),
                                        //   ),
                                        //   ),
                                      ),
                                      forceElevated: innerBoxIsScrolled,
                                      backgroundColor: Colors.yellow,
                                      elevation: 0,
                                      actions: <Widget>[
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.save),
                                          tooltip: 'Save',
                                        ),
                                      ],
                                    ),
                                  ];
                                },
                                body: Center(
                                  child: ListView(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 18.0),
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              SizedBox(
                                                height: 120,
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon:
                                                Icon(Icons.account_circle),
                                                iconSize: 50.0,
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text('ADD',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.blue)),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 60.0,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                              labelStyle:
                                              TextStyle(fontSize: 20),
                                              labelText: "Email",
                                              helperText: 'àààấdfsdfsdfs',
                                              filled: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 60.0,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelStyle: TextStyle(fontSize: 20),
                                          labelText: "Email",
                                          filled: true,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 60.0,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelStyle: TextStyle(fontSize: 20),
                                          labelText: "Email",
                                          filled: true,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          ButtonTheme(
                                              height: 50,
                                              disabledColor: Colors.blue,
                                              child: ButtonBar(
                                                children: <Widget>[
                                                  FlatButton(
                                                    child: Text('Ok',
                                                        style: const TextStyle(
                                                            fontSize: 20)),
                                                    color: Colors.blue,
                                                    height: 60.0,
                                                    minWidth: 100.0,
                                                    onPressed: () {
                                                      /** */
                                                    },
                                                  ),
                                                  FlatButton(
                                                    child: Text('Cancel',
                                                        style: const TextStyle(
                                                            fontSize: 20)),
                                                    color: Colors.blue,
                                                    height: 60.0,
                                                    minWidth: 100.0,
                                                    onPressed: () {
                                                      /** */
                                                    },
                                                  ),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        },
                      ));
                    },
                  ),
                ],
              ),
            ];
          },

          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _allKeys = _allWords.keys
                          .where((key) =>
                          key.toLowerCase().contains(value.toLowerCase()))
                          .toList();
                    });
                  },
                  onSubmitted: (value) {},
                  decoration: const InputDecoration(
                      labelText: 'Search', suffixIcon: Icon(Icons.search)),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: _allKeys.length,
                    itemBuilder: (BuildContext context, int index) {
                      final String key = _allKeys[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            pickList1 = true;
                            pickList2 = false;
                            print('bbbbb');
                          });
                        },
                        onLongPress: () {
                          pickList1 = false;
                          pickList2 = true;
                          print('aaaaaaa');
                        },
                        child: ListTile(
                          title: Text(key),
                          trailing: InkWell(
                            onTap: () {
                              setState(() {
                                pickList1 = true;
                                pickList2 = false;
                                print('bbbbb');
                              });
                            },
                            onLongPress: () {
                              pickList1 = false;
                              pickList2 = true;
                              print('aaaaaaa');
                            },
                            child: PopupMenuButton(
                              itemBuilder: (context) {
                                return pickList1 ? list1 : list2;
                              },
                              onSelected: (String value) {
                                print('You Click on po up menu item');
                              },
                            ),
                          ),
                          subtitle: Text(_allWords[key][0]),
                          // onTap: () {
                          //   // Navigator.push(
                          //   //   context,
                          //   //   MaterialPageRoute(
                          //   //     builder: (BuildContext context) =>
                          //   //         DetailView(
                          //   //             word: key,
                          //   //             definition: _allWords[key][0],
                          //   //             pronounce: _allWords[key][1]),
                          //   //   ),
                          //   // );
                          // },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  bool pickList1 = true;
  bool pickList2 = false;
  List<PopupMenuEntry<String>> list1 = [
    PopupMenuItem(
      value: 'edit',
      child: Text('Edit'),
    ),
    PopupMenuItem(
      value: 'delete',
      child: Text('Delete'),
    )
  ];
  List<PopupMenuEntry<String>> list2 = [
    PopupMenuItem(
      value: 'edit',
      child: Text('Edit'),
    ),
    PopupMenuItem(
      value: 'edit',
      child: Text('Edit'),
    ),
    PopupMenuItem(
      value: 'edit',
      child: Text('Edit'),
    ),
    PopupMenuItem(
      value: 'delete',
      child: Text('Delete'),
    )
  ];
}

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Sarah Abs';
    final email = 'sarah@abs.com';
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => UserPage(
                  name: 'Sarah Abs',
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'People',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Favourites',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Workflow',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Updates',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Plugins',
                    icon: Icons.account_tree_outlined,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Sign Out ',
                    icon: Icons.login,
                    onClicked: () => selectedItem(context, 5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavouritesPage(),
        ));
        break;
    }
  }
}

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Favourites'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('People'),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
  );
}

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;

  const UserPage({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink,
      title: Text(name),
      centerTitle: true,
    ),
    body: Image.network(
      urlImage,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}

class DetailView extends StatelessWidget {
  const DetailView(
      {Key? key,
        required this.word,
        required this.definition,
        required this.pronounce})
      : super(key: key);
  final String word;
  final String definition;
  final String pronounce;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(word),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pronounce),
              Text(definition),
            ],
          ),
        ),
      ),
    );
  }
}
