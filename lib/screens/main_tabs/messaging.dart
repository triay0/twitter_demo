import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Messaging extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text('Messaging')//SliverList(delegate: SliverChildListDelegate(timelineBuilder())),
        )
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