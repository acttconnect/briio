/// error : false
/// data : [{"id":3,"category_id":1,"sub_category_id":2,"image":"22-03-23-1259051261.jpg","title":"Beauty","description":"Products","created_at":"2022-03-23T05:33:54.000000Z","updated_at":"2022-03-23T05:33:54.000000Z"},{"id":2,"category_id":2,"sub_category_id":4,"image":"22-03-23-224481348.jpg","title":"Break fast","description":"Description","created_at":"2022-03-23T05:33:22.000000Z","updated_at":"2022-03-23T05:33:22.000000Z"},{"id":1,"category_id":1,"sub_category_id":1,"image":"22-03-23-2086231136.jpg","title":"Organic","description":"Food","created_at":"2022-03-23T05:32:48.000000Z","updated_at":"2022-03-23T05:32:48.000000Z"}]

class SlidersModel {
  SlidersModel({
      bool? error, 
      List<Data>? data,}){
    _error = error;
    _data = data;
}

  SlidersModel.fromJson(dynamic json) {
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
SlidersModel copyWith({  bool? error,
  List<Data>? data,
}) => SlidersModel(  error: error ?? _error,
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

/// id : 3
/// category_id : 1
/// sub_category_id : 2
/// image : "22-03-23-1259051261.jpg"
/// title : "Beauty"
/// description : "Products"
/// created_at : "2022-03-23T05:33:54.000000Z"
/// updated_at : "2022-03-23T05:33:54.000000Z"

class Data {
  Data({
      int? id, 
      int? categoryId, 
      int? subCategoryId, 
      String? image, 
      String? title, 
      String? description, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _categoryId = categoryId;
    _subCategoryId = subCategoryId;
    _image = image;
    _title = title;
    _description = description;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _categoryId = json['category_id'];
    _subCategoryId = json['sub_category_id'];
    _image = json['image'];
    _title = json['title'];
    _description = json['description'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _categoryId;
  int? _subCategoryId;
  String? _image;
  String? _title;
  String? _description;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  int? id,
  int? categoryId,
  int? subCategoryId,
  String? image,
  String? title,
  String? description,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  categoryId: categoryId ?? _categoryId,
  subCategoryId: subCategoryId ?? _subCategoryId,
  image: image ?? _image,
  title: title ?? _title,
  description: description ?? _description,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get categoryId => _categoryId;
  int? get subCategoryId => _subCategoryId;
  String? get image => _image;
  String? get title => _title;
  String? get description => _description;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['category_id'] = _categoryId;
    map['sub_category_id'] = _subCategoryId;
    map['image'] = _image;
    map['title'] = _title;
    map['description'] = _description;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}