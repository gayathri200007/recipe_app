class User {
  String _name;
  String _username;
  String _password;
  int _phno;
  String _email;
  String _flaglogged;



  User(this._name, this._username, this._password,this._phno,this._email, this._flaglogged);

  User.map(dynamic obj) {
    this._name = obj['name'];
    this._username = obj['username'];
    this._password = obj['password'];
    this._phno = obj['phno'];
    this._email = obj['email'];
    this._flaglogged = obj['password'];
  }

  String get name => _name;
  String get username => _username;
  String get password => _password;
  int get phno => _phno;
  String get email => _email;
  String get flaglogged => _flaglogged;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = _name;
    map["username"] = _username;
    map["password"] = _password;
    map["phno"] = _phno;
    map["email"] = _email;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}