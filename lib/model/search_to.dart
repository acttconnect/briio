import 'dart:convert';
Searchto searchtoFromJson(String str) => Searchto.fromJson(json.decode(str));
String searchtoToJson(Searchto data) => json.encode(data.toJson());
class Searchto {
  Searchto({
      bool? error, 
      List<Data>? data,}){
    _error = error;
    _data = data;
}

  Searchto.fromJson(dynamic json) {
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
Searchto copyWith({  bool? error,
  List<Data>? data,
}) => Searchto(  error: error ?? _error,
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? id, 
      String? name, 
      num? categoryId, 
      dynamic subcategoryId, 
      String? image, 
      num? brandId, 
      dynamic otherImage, 
      String? description, 
      String? shortDesc, 
      num? status, 
      String? productCode, 
      num? gw, 
      num? stone, 
      num? nw, 
      num? isFeature, 
      String? caret, 
      String? catName, 
      String? subcatName, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _categoryId = categoryId;
    _subcategoryId = subcategoryId;
    _image = image;
    _brandId = brandId;
    _otherImage = otherImage;
    _description = description;
    _shortDesc = shortDesc;
    _status = status;
    _productCode = productCode;
    _gw = gw;
    _stone = stone;
    _nw = nw;
    _isFeature = isFeature;
    _caret = caret;
    _catName = catName;
    _subcatName = subcatName;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _categoryId = json['category_id'];
    _subcategoryId = json['subcategory_id'];
    _image = json['image'];
    _brandId = json['brand_id'];
    _otherImage = json['other_image'];
    _description = json['description'];
    _shortDesc = json['short_desc'];
    _status = json['status'];
    _productCode = json['product_code'];
    _gw = json['gw'];
    _stone = json['stone'];
    _nw = json['nw'];
    _isFeature = json['is_feature'];
    _caret = json['caret'];
    _catName = json['cat_name'];
    _subcatName = json['subcat_name'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  num? _categoryId;
  dynamic _subcategoryId;
  String? _image;
  num? _brandId;
  dynamic _otherImage;
  String? _description;
  String? _shortDesc;
  num? _status;
  String? _productCode;
  num? _gw;
  num? _stone;
  num? _nw;
  num? _isFeature;
  String? _caret;
  String? _catName;
  String? _subcatName;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  num? id,
  String? name,
  num? categoryId,
  dynamic subcategoryId,
  String? image,
  num? brandId,
  dynamic otherImage,
  String? description,
  String? shortDesc,
  num? status,
  String? productCode,
  num? gw,
  num? stone,
  num? nw,
  num? isFeature,
  String? caret,
  String? catName,
  String? subcatName,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  categoryId: categoryId ?? _categoryId,
  subcategoryId: subcategoryId ?? _subcategoryId,
  image: image ?? _image,
  brandId: brandId ?? _brandId,
  otherImage: otherImage ?? _otherImage,
  description: description ?? _description,
  shortDesc: shortDesc ?? _shortDesc,
  status: status ?? _status,
  productCode: productCode ?? _productCode,
  gw: gw ?? _gw,
  stone: stone ?? _stone,
  nw: nw ?? _nw,
  isFeature: isFeature ?? _isFeature,
  caret: caret ?? _caret,
  catName: catName ?? _catName,
  subcatName: subcatName ?? _subcatName,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get name => _name;
  num? get categoryId => _categoryId;
  dynamic get subcategoryId => _subcategoryId;
  String? get image => _image;
  num? get brandId => _brandId;
  dynamic get otherImage => _otherImage;
  String? get description => _description;
  String? get shortDesc => _shortDesc;
  num? get status => _status;
  String? get productCode => _productCode;
  num? get gw => _gw;
  num? get stone => _stone;
  num? get nw => _nw;
  num? get isFeature => _isFeature;
  String? get caret => _caret;
  String? get catName => _catName;
  String? get subcatName => _subcatName;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['category_id'] = _categoryId;
    map['subcategory_id'] = _subcategoryId;
    map['image'] = _image;
    map['brand_id'] = _brandId;
    map['other_image'] = _otherImage;
    map['description'] = _description;
    map['short_desc'] = _shortDesc;
    map['status'] = _status;
    map['product_code'] = _productCode;
    map['gw'] = _gw;
    map['stone'] = _stone;
    map['nw'] = _nw;
    map['is_feature'] = _isFeature;
    map['caret'] = _caret;
    map['cat_name'] = _catName;
    map['subcat_name'] = _subcatName;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}