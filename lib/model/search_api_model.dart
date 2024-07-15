/// id : 18
/// name : "Plain Bracelet"
/// category_id : 7
/// subcategory_id : 9
/// image : "22-08-05-853061662.png"
/// brand_id : 1
/// other_image : null
/// description : "<p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available</span></p><p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\"><br></span>\r\n\r\n\r\n                      </p>"
/// short_desc : "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print"
/// status : 1
/// product_code : "brj-87"
/// gw : 87
/// stone : 20
/// nw : 88
/// is_feature : 0
/// caret : "22"
/// created_at : "2022-08-05T09:25:39.000000Z"
/// updated_at : "2022-08-05T09:25:39.000000Z"

class SearchApiModel {
  SearchApiModel({
      int? id, 
      String? name, 
      int? categoryId, 
      int? subcategoryId, 
      String? image, 
      int? brandId, 
      dynamic otherImage, 
      String? description, 
      String? shortDesc, 
      int? status, 
      String? productCode, 
      int? gw, 
      int? stone, 
      int? nw, 
      int? isFeature, 
      String? caret, 
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
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  SearchApiModel.fromJson(dynamic json) {
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
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _name;
  int? _categoryId;
  int? _subcategoryId;
  String? _image;
  int? _brandId;
  dynamic _otherImage;
  String? _description;
  String? _shortDesc;
  int? _status;
  String? _productCode;
  int? _gw;
  int? _stone;
  int? _nw;
  int? _isFeature;
  String? _caret;
  String? _createdAt;
  String? _updatedAt;
SearchApiModel copyWith({  int? id,
  String? name,
  int? categoryId,
  int? subcategoryId,
  String? image,
  int? brandId,
  dynamic otherImage,
  String? description,
  String? shortDesc,
  int? status,
  String? productCode,
  int? gw,
  int? stone,
  int? nw,
  int? isFeature,
  String? caret,
  String? createdAt,
  String? updatedAt,
}) => SearchApiModel(  id: id ?? _id,
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
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get name => _name;
  int? get categoryId => _categoryId;
  int? get subcategoryId => _subcategoryId;
  String? get image => _image;
  int? get brandId => _brandId;
  dynamic get otherImage => _otherImage;
  String? get description => _description;
  String? get shortDesc => _shortDesc;
  int? get status => _status;
  String? get productCode => _productCode;
  int? get gw => _gw;
  int? get stone => _stone;
  int? get nw => _nw;
  int? get isFeature => _isFeature;
  String? get caret => _caret;
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
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}