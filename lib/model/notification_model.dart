/// error : true
/// message : [{"id":1,"title":"Title 1","description":"This item is on sale \r\npurchase it on discount price","image":"2021-11-18-619632c4ee83a.png","status":1,"user_id":32,"created_at":"2021-11-18T05:32:28.000000Z","updated_at":"2022-03-01T05:03:48.000000Z"},{"id":2,"title":"title-1","description":"Des bamjdhf","image":"2022-01-31-61f7c24c7cbba.png","status":1,"user_id":32,"created_at":"2022-01-31T05:34:44.000000Z","updated_at":"2022-03-01T05:03:46.000000Z"}]

class NoticfictionModel {
  NoticfictionModel({
      bool? error, 
      List<Message>? message,}){
    _error = error;
    _message = message;
}

  NoticfictionModel.fromJson(dynamic json) {
    _error = json['error'];
    if (json['message'] != null) {
      _message = [];
      json['message'].forEach((v) {
        _message?.add(Message.fromJson(v));
      });
    }
  }
  bool? _error;
  List<Message>? _message;
NoticfictionModel copyWith({  bool? error,
  List<Message>? message,
}) => NoticfictionModel(  error: error ?? _error,
  message: message ?? _message,
);
  bool? get error => _error;
  List<Message>? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_message != null) {
      map['message'] = _message?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// title : "Title 1"
/// description : "This item is on sale \r\npurchase it on discount price"
/// image : "2021-11-18-619632c4ee83a.png"
/// status : 1
/// user_id : 32
/// created_at : "2021-11-18T05:32:28.000000Z"
/// updated_at : "2022-03-01T05:03:48.000000Z"

class Message {
  Message({
      int? id, 
      String? title, 
      String? description, 
      String? image, 
      int? status, 
      int? userId, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _title = title;
    _description = description;
    _image = image;
    _status = status;
    _userId = userId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Message.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _image = json['image'];
    _status = json['status'];
    _userId = json['user_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _title;
  String? _description;
  String? _image;
  int? _status;
  int? _userId;
  String? _createdAt;
  String? _updatedAt;
Message copyWith({  int? id,
  String? title,
  String? description,
  String? image,
  int? status,
  int? userId,
  String? createdAt,
  String? updatedAt,
}) => Message(  id: id ?? _id,
  title: title ?? _title,
  description: description ?? _description,
  image: image ?? _image,
  status: status ?? _status,
  userId: userId ?? _userId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get image => _image;
  int? get status => _status;
  int? get userId => _userId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['image'] = _image;
    map['status'] = _status;
    map['user_id'] = _userId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}