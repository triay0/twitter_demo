import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:ThemeData.light(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon( Icons.edit),),
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
        type: BottomNavigationBarType.fixed,
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
        unselectedItemColor: Colors.black45,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: _titles.elementAt(_selectedIndex),
            floating: true,
          ),
          SliverList(delegate: SliverChildListDelegate(timelineBuilder()))
        ],
      ),
    );
  }

  List timelineBuilder() {
    List<Widget> tweets = List();
    for (int i = 0; i < 50; i++) {
      Widget tweet = new ListTile(
        trailing: Text('1h'),
        leading: Icon(Icons.account_circle),
        title: Text('Helow'),
        subtitle: Text(
            'asdfgjhkhg asdfgjhkhg asdfgjhkhgasdfgjhkhgasdfgjhkhg asdfgjhkhg asdfgjhkhg  '),
      );

      tweets.add(tweet);
    }
    return tweets;
  }
}
