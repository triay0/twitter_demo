import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  static const List<Widget> _titles = <Widget>[
    Text(
      'TimeLine',
//      style: optionStyle,
    ),
    Text(
      'Hashtag & search',
//      style: optionStyle,
    ),
    Text(
      'Notifications',
//      style: optionStyle,
    ),
    Text(
      'DM',
//      style: optionStyle,
    ),
  ];

  List<Widget> _content = <Widget>[
//    tweets(),
    Text(
      'Hashtag & search',
//      style: optionStyle,
    ),
    Text(
      'Notifications',
//      style: optionStyle,
    ),
    Text(
      'DM',
//      style: optionStyle,
    ),
  ];

  Widget tweets() {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext ctxt, int index) {
          return new Text('helo');
        });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _titles.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Name'),
            accountEmail: Text('@nickname'),
            currentAccountPicture: Icon(Icons.whatshot),
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Lists"),
            leading: Icon(Icons.list),
          ),
          ListTile(
            title: Text("Saved items"),
            leading: Icon(Icons.save),
          ),
          ListTile(
            title: Text("Moments"),
            leading: Icon(Icons.whatshot),
          ),
          Divider(),
          ListTile(
            title: Text("Config & privacy"),
          ),
          ListTile(
            title: Text("Help Center"),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
          ),
        ],
        unselectedItemColor: Colors.black12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
          child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    color: Colors.blueGrey,
                  ),
              itemCount: 15,
              itemBuilder: (BuildContext ctxt, int index) {
                return new ListTile(
                  trailing: Text('1h'),
                  leading: Icon(Icons.account_circle),
                  title: Text('Helow'),
                  subtitle: Text(
                      'asdfgjhkhg asdfgjhkhg asdfgjhkhgasdfgjhkhgasdfgjhkhg asdfgjhkhg asdfgjhkhg  '),
                );
              })
          //_content.elementAt(_selectedIndex),
          ),
    );
  }
}
