import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitter_demo/modules/tweet.dart';
import 'package:twitter_demo/modules/user.dart';
import 'package:twitter_demo/screens/tweet.dart';

class TimeLine extends StatefulWidget {
  TimeLine({Key key}) : super(key: key);

  @override
  TimeLineState createState() => TimeLineState();
}

class TimeLineState extends State<TimeLine> {
  List<Tweet> tweets = [
    Tweet(
        User('Juan', 'Magan', 'sdfgh'),
        'Hola',
        2,
        2,
        5,
        DateTime(
          2019,
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView.separated(

          separatorBuilder: (context, index) => Divider(
                color: Colors.blueGrey,
              ),
          itemCount: tweets.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return new ListTile(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TweetPage(tweet: tweets[index],),
                ),);
            },
                trailing: Text('1h'),
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                title: Row(
                  children: <Widget>[
                    Text(
                      tweets[index].user.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '@${tweets[index].user.nick}',
                      style: TextStyle(color: Colors.black45, fontSize: 14),
                    ),
                  ],
                ),
                subtitle: Column(
                  children: <Widget>[
                    Text(
                      tweets[index].text,
                      textAlign: TextAlign.left,

                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.message,
                              size: 18,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 5,),
                            Text(tweets[index].comments.toString()),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.autorenew,
                              size: 18,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 5,),
                            Text(tweets[index].rt.toString()),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.favorite,
                              size: 18,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 5,),
                            Text(tweets[index].fav.toString()),
                          ],
                        ),
                        Icon(
                          Icons.share,
                          size: 18,
                          color: Colors.blueGrey,
                        ),
                      ],
//
                    )
                  ],
                ));
          }),
      // : SliverChildListDelegate(timelineBuilder())),
    ));
  }



}
