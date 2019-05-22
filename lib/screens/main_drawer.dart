import 'package:flutter/material.dart';


class MainDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
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
        ]
    );
  }



}