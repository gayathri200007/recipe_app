class Recipe {
  String _dname;
  String _rec1;
  String _rec2;
  String _rec3;
  String _rec4;
  String _rec5;
  String _rec6;

  Recipe(this._dname, this._rec1, this._rec2,this._rec3,this._rec4, this._rec5, this._rec6);

  Recipe.map(dynamic obj) {
    this._dname = obj['dname'];
    this._rec1 = obj['rec1'];
    this._rec2 = obj['rec2'];
    this._rec3 = obj['rec3'];
    this._rec4 = obj['rec4'];
    this._rec5 = obj['rec5'];
    this._rec6 = obj['rec6'];
  }

  String get dname => _dname;
  String get rec1 => _rec1;
  String get rec2 => _rec2;
  String get rec3 => _rec3;
  String get rec4 => _rec4;
  String get rec5 => _rec5;
  String get rec6 => _rec6;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["dname"] = _dname;
    map["rec1"] = _rec1;
    map["rec2"] = _rec2;
    map["rec3"] = _rec3;
    map["rec4"] = _rec4;
    map["rec5"] = _rec5;
    map["rec6"] = _rec6;
    return map;
  }
}