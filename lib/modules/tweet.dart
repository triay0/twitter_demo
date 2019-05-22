import 'package:twitter_demo/modules/user.dart';

class Tweet{
  User user;
  String text;
  int _rt;
  int _fav;

  int get rt => _rt;

  set rt(int value) {
    _rt = value;
  }

  int _comments;
  DateTime _dateTime;

  Tweet(this.user, this.text, this._rt, this._fav, this._comments,
      this._dateTime);

  int get fav => _fav;

  set fav(int value) {
    _fav = value;
  }

  int get comments => _comments;

  set comments(int value) {
    _comments = value;
  }

  DateTime get dateTime => _dateTime;

  set dateTime(DateTime value) {
    _dateTime = value;
  }

}