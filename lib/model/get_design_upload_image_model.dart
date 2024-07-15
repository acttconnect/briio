/// error : false
/// data : [{"id":53,"cid":32,"product_name":"Text","category_id":3,"caret":"text","gram":"1","imagepicker":null,"description":"text","holemarks":null,"size":null,"created_at":"2022-07-04T06:16:17.000000Z","updated_at":"2022-07-04T06:16:17.000000Z"},{"id":54,"cid":32,"product_name":"Text","category_id":3,"caret":"text","gram":"1","imagepicker":null,"description":"text","holemarks":null,"size":null,"created_at":"2022-07-04T06:22:34.000000Z","updated_at":"2022-07-04T06:22:34.000000Z"},{"id":55,"cid":32,"product_name":"Text","category_id":3,"caret":"text","gram":"1","imagepicker":"IMG-2022-07-041547482764.jpg","description":"text","holemarks":null,"size":null,"created_at":"2022-07-04T06:26:11.000000Z","updated_at":"2022-07-04T06:26:11.000000Z"},{"id":56,"cid":32,"product_name":"Text","category_id":3,"caret":"text","gram":"1","imagepicker":"IMG-2022-07-041986124765.jpg","description":"text","holemarks":"Text","size":null,"created_at":"2022-07-04T06:28:47.000000Z","updated_at":"2022-07-04T06:28:47.000000Z"},{"id":57,"cid":32,"product_name":"Text","category_id":3,"caret":"text","gram":"1","imagepicker":"IMG-2022-07-041227895.jpg","description":"text","holemarks":"Text","size":null,"created_at":"2022-07-04T16:53:34.000000Z","updated_at":"2022-07-04T16:53:34.000000Z"}]

class GetDesignUploadImageModel {
  GetDesignUploadImageModel({
      bool? error, 
      List<Data>? data,}){
    _error = error;
    _data = data;
}

  GetDesignUploadImageModel.fromJson(dynamic json) {
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
GetDesignUploadImageModel copyWith({  bool? error,
  List<Data>? data,
}) => GetDesignUploadImageModel(  error: error ?? _error,
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

/// id : 53
/// cid : 32
/// product_name : "Text"
/// category_id : 3
/// caret : "text"
/// gram : "1"
/// imagepicker : null
/// description : "text"
/// holemarks : null
/// size : null
/// created_at : "2022-07-04T06:16:17.000000Z"
/// updated_at : "2022-07-04T06:16:17.000000Z"

class Data {
  Data({
      int? id, 
      int? cid, 
      String? productName, 
      int? categoryId, 
      String? caret, 
      String? gram, 
      dynamic imagepicker, 
      String? description, 
      dynamic holemarks, 
      dynamic size, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _cid = cid;
    _productName = productName;
    _categoryId = categoryId;
    _caret = caret;
    _gram = gram;
    _imagepicker = imagepicker;
    _description = description;
    _holemarks = holemarks;
    _size = size;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _cid = json['cid'];
    _productName = json['product_name'];
    _categoryId = json['category_id'];
    _caret = json['caret'];
    _gram = json['gram'];
    _imagepicker = json['imagepicker'];
    _description = json['description'];
    _holemarks = json['holemarks'];
    _size = json['size'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _cid;
  String? _productName;
  int? _categoryId;
  String? _caret;
  String? _gram;
  dynamic _imagepicker;
  String? _description;
  dynamic _holemarks;
  dynamic _size;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  int? id,
  int? cid,
  String? productName,
  int? categoryId,
  String? caret,
  String? gram,
  dynamic imagepicker,
  String? description,
  dynamic holemarks,
  dynamic size,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  cid: cid ?? _cid,
  productName: productName ?? _productName,
  categoryId: categoryId ?? _categoryId,
  caret: caret ?? _caret,
  gram: gram ?? _gram,
  imagepicker: imagepicker ?? _imagepicker,
  description: description ?? _description,
  holemarks: holemarks ?? _holemarks,
  size: size ?? _size,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get cid => _cid;
  String? get productName => _productName;
  int? get categoryId => _categoryId;
  String? get caret => _caret;
  String? get gram => _gram;
  dynamic get imagepicker => _imagepicker;
  String? get description => _description;
  dynamic get holemarks => _holemarks;
  dynamic get size => _size;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['cid'] = _cid;
    map['product_name'] = _productName;
    map['category_id'] = _categoryId;
    map['caret'] = _caret;
    map['gram'] = _gram;
    map['imagepicker'] = _imagepicker;
    map['description'] = _description;
    map['holemarks'] = _holemarks;
    map['size'] = _size;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}