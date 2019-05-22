
import 'package:flutter/material.dart';
import 'package:twitter_demo/modules/tweet.dart';

class TweetPage extends StatefulWidget{
  Tweet tweet;

  TweetPage({Key key, this.tweet}) : super(key: key);

  @override
  TweetPageState createState() {
    return TweetPageState();
  }

}

class TweetPageState extends State<TweetPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Tweet'),),
      body: ListTile(

          trailing: Text('1h'),
          leading: Icon(
            Icons.account_circle,
            size: 40,
          ),
          title: Row(
            children: <Widget>[
              Text(
                widget.tweet.user.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '@${widget.tweet.user.nick}',
                style: TextStyle(color: Colors.black45, fontSize: 14),
              ),
            ],
          ),
          subtitle: Column(
            children: <Widget>[
              Text(
                widget.tweet.text,
                textAlign: TextAlign.left,

                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(widget.tweet.dateTime.toIso8601String()),
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
                      Text(widget.tweet.comments.toString()),
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
                      Text(widget.tweet.rt.toString()),
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
                      Text(widget.tweet.fav.toString()),
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
          )
      ),
    );
  }

}
