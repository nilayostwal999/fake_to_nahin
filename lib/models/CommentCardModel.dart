class CommentCardModel {
  int _id;
  String _username;
  String _dateCreated;
  String _link;
  String _imagePath;

  CommentCardModel(this._username, this._dateCreated,
      this._link, this._imagePath);

  // There can be only one un-named constructor in a class, sohere we have to use a named constructor.

  // Constructor 2 -> when we have an id for e.g. when we are editing the todo.
  CommentCardModel.withId(this._id, this._username, this._dateCreated,
      this._link, this._imagePath);

  // Getters
  int get id => _id;
  String get dateCreated => _dateCreated;
  String get username => _username;
  String get link => _link;
  String get imagePath => _imagePath;

//setters
  set link(String newLink) {
    _link = newLink;
  }

  set dateCreated(String newDate) {
    _dateCreated = newDate;
  }

  // method to transform out Todo into a map, this will come handy when we will use some helper methods in squlite
  Map<String, dynamic> toMap() {
    // To know about 'dynamic' keyword: https://stackoverflow.com/a/59107168/10204932
    var map = Map<String, dynamic>();
    map["link"] = _link;
    map["imagePath"] = _imagePath;
    map["username"] = _username;
    map["dateCreated"] = _dateCreated;

    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

// Constructor 3 -> This will do just opposite of toMap(); It will take a dynamic object and covert it into a Todo
  CommentCardModel.fromObject(dynamic o) {
    this._id = o["id"];
    this._link = o["link"];
    this._imagePath = o["imagePath"];
    this._username = o["username"];
    this._dateCreated = o["dateCreated"];
  }
}