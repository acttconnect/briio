/// error : false
/// data : [{"id":2,"name":"Category 2","subtitle":"Category 2","image":"22-03-23-28687847.png","status":1,"created_at":"2022-03-23T05:01:00.000000Z","updated_at":"2022-03-23T05:01:00.000000Z"},{"id":1,"name":"Category 1","subtitle":"Category 1","image":"22-03-23-2131484243.jpg","status":1,"created_at":"2022-03-23T05:00:38.000000Z","updated_at":"2022-03-23T05:00:38.000000Z"}]

class CatogriesModel {
  CatogriesModel({
      bool? error, 
      List<Data>? data,}){
    _error = error;
    _data = data;
}

  CatogriesModel.fromJson(dynamic json) {
    _error = json['error'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _error;
  List<Data>? _data;
CatogriesModel copyWith({  bool? error,
  List<Data>? data,
}) => CatogriesModel(  error: error ?? _error,
  data: data ?? _data,
);
  bool? get error => _error;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// name : "Category 2"
/// subtitle : "Category 2"
/// image : "22-03-23-28687847.png"
/// status : 1
/// created_at : "2022-03-23T05:01:00.000000Z"
/// updated_at : "2022-03-23T05:01:00.000000Z"

class Data {
  Data({
      int? id, 
      String? name, 
      String? subtitle, 
      String? image, 
      int? status, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _subtitle = subtitle;
    _image = image;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _subtitle = json['subtitle'];
    _image = json['image'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _name;
  String? _subtitle;
  String? _image;
  int? _status;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  int? id,
  String? name,
  String? subtitle,
  String? image,
  int? status,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  subtitle: subtitle ?? _subtitle,
  image: image ?? _image,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get name => _name;
  String? get subtitle => _subtitle;
  String? get image => _image;
  int? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['subtitle'] = _subtitle;
    map['image'] = _image;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}