/// error : false
/// data : {"cid":"32","product_name":"Text","category_id":"3","caret":"text","gram":"1","description":"text","holemarks":"Text","imagepicker":"IMG-2022-07-041227895.jpg","updated_at":"2022-07-04T16:53:34.000000Z","created_at":"2022-07-04T16:53:34.000000Z","id":57}

class GetDesignUploadModel {
  GetDesignUploadModel({
      bool? error, 
      Data? data,}){
    _error = error;
    _data = data;
}

  GetDesignUploadModel.fromJson(dynamic json) {
    _error = json['error'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _error;
  Data? _data;
GetDesignUploadModel copyWith({  bool? error,
  Data? data,
}) => GetDesignUploadModel(  error: error ?? _error,
  data: data ?? _data,
);
  bool? get error => _error;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// cid : "32"
/// product_name : "Text"
/// category_id : "3"
/// caret : "text"
/// gram : "1"
/// description : "text"
/// holemarks : "Text"
/// imagepicker : "IMG-2022-07-041227895.jpg"
/// updated_at : "2022-07-04T16:53:34.000000Z"
/// created_at : "2022-07-04T16:53:34.000000Z"
/// id : 57

class Data {
  Data({
      String? cid, 
      String? productName, 
      String? categoryId, 
      String? caret, 
      String? gram, 
      String? description, 
      String? holemarks, 
      String? imagepicker, 
      String? updatedAt, 
      String? createdAt, 
      int? id,}){
    _cid = cid;
    _productName = productName;
    _categoryId = categoryId;
    _caret = caret;
    _gram = gram;
    _description = description;
    _holemarks = holemarks;
    _imagepicker = imagepicker;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
}

  Data.fromJson(dynamic json) {
    _cid = json['cid'];
    _productName = json['product_name'];
    _categoryId = json['category_id'];
    _caret = json['caret'];
    _gram = json['gram'];
    _description = json['description'];
    _holemarks = json['holemarks'];
    _imagepicker = json['imagepicker'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _cid;
  String? _productName;
  String? _categoryId;
  String? _caret;
  String? _gram;
  String? _description;
  String? _holemarks;
  String? _imagepicker;
  String? _updatedAt;
  String? _createdAt;
  int? _id;
Data copyWith({  String? cid,
  String? productName,
  String? categoryId,
  String? caret,
  String? gram,
  String? description,
  String? holemarks,
  String? imagepicker,
  String? updatedAt,
  String? createdAt,
  int? id,
}) => Data(  cid: cid ?? _cid,
  productName: productName ?? _productName,
  categoryId: categoryId ?? _categoryId,
  caret: caret ?? _caret,
  gram: gram ?? _gram,
  description: description ?? _description,
  holemarks: holemarks ?? _holemarks,
  imagepicker: imagepicker ?? _imagepicker,
  updatedAt: updatedAt ?? _updatedAt,
  createdAt: createdAt ?? _createdAt,
  id: id ?? _id,
);
  String? get cid => _cid;
  String? get productName => _productName;
  String? get categoryId => _categoryId;
  String? get caret => _caret;
  String? get gram => _gram;
  String? get description => _description;
  String? get holemarks => _holemarks;
  String? get imagepicker => _imagepicker;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cid'] = _cid;
    map['product_name'] = _productName;
    map['category_id'] = _categoryId;
    map['caret'] = _caret;
    map['gram'] = _gram;
    map['description'] = _description;
    map['holemarks'] = _holemarks;
    map['imagepicker'] = _imagepicker;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }

}