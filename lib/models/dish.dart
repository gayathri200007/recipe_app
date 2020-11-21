class Dish {
  String _dishname;
  String _time;
  int _cal;
  int _ingr;
  String _method;
  String _image;



  Dish(this._dishname, this._time, this._cal,this._ingr,this._method, this._image);

  Dish.map(dynamic obj) {
    this._dishname = obj['dishname'];
    this._time = obj['time'];
    this._cal = obj['cal'];
    this._ingr = obj['ingr'];
    this._method = obj['method'];
    this._image = obj['image'];
  }

  String get dishname => _dishname;
  String get time => _time;
  int get cal => _cal;
  int get ingr => _ingr;
  String get method => _method;
  String get image => _image;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["dishname"] = _dishname;
    map["time"] = _time;
    map["cal"] = _cal;
    map["ingr"] = _ingr;
    map["method"] = _method;
    map["image"] = _image;
    return map;
  }
}