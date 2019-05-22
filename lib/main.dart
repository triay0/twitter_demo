import 'package:flutter/material.dart';
import 'package:twitter_demo/screens/main_drawer.dart';
import 'package:twitter_demo/screens/main_tabs/messaging.dart';
import 'package:twitter_demo/screens/main_tabs/notifications.dart';
import 'package:twitter_demo/screens/main_tabs/search.dart';
import 'package:twitter_demo/screens/main_tabs/timeline.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  PageController _tabController;
  String _title;

  @override
  void initState() {
    super.initState();
    _tabController = new PageController();
    _title = TabItems[0].title;
    _selectedIndex = 0;
  }

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

  void onTap(int tab) {
    _tabController.jumpToPage(tab);
  }

  void onTabChanged(int tab) {
    setState(() {
      this._selectedIndex = tab;
    });

    this._title = TabItems[tab].title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.edit),
      ),
      drawer: Drawer(child: MainDrawer()),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: TabItems.map((TabItem item) {
          return new BottomNavigationBarItem(
            title: new Text(
              item.title,
            ),
            icon: new Icon(item.icon),
          );
        }).toList(),
        unselectedItemColor: Colors.black45,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: onTap,
      ),
      body:
//      CustomScrollView(
//        slivers: <Widget>[
//          SliverAppBar(
//            title: _titles.elementAt(_selectedIndex),
//            floating: true,
//          ),
//
////          Silv
          PageView(
            controller: _tabController,
            onPageChanged: onTabChanged,
            children: <Widget>[
              TimeLine(),
              Search(),
              Notifications(),
              Messaging()
            ],
          )
//        ],
//      ),
    );
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  static const List<TabItem> TabItems = const <TabItem>[
    const TabItem(title: 'TimeLine', icon: Icons.home),
    const TabItem(title: 'Hashtag & search', icon: Icons.search),
    const TabItem(title: 'Notifications', icon: Icons.notifications),
    const TabItem(title: 'DM', icon: Icons.message)
  ];

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
}

class TabItem {
  final String title;
  final IconData icon;

  const TabItem({this.title, this.icon});
}
