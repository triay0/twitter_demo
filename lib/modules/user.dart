class User{
  String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String _nick;
  String _urlImage;

  User(this._name, this._nick, this._urlImage);

  String get nick => _nick;

  set nick(String value) {
    _nick = value;
  }

  String get urlImage => _urlImage;

  set urlImage(String value) {
    _urlImage = value;
  }
}