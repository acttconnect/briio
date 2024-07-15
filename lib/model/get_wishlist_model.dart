/// error : false
/// data : [{"id":5,"userid":"3","productid":"1","productvariantid":1,"created_at":"2022-04-26T11:43:56.000000Z","updated_at":"2022-04-26T11:43:56.000000Z","product":{"id":1,"name":"Product 1","category_id":1,"subcategory_id":1,"image":"22-03-23-1224117867.jpg","brand_id":1,"other_image":"[\"22-03-23-164801306776.jpg\"]","description":"Discription","short_desc":"Act t Connect","status":1,"created_at":"2022-03-23T05:24:27.000000Z","updated_at":"2022-03-23T05:24:27.000000Z"}}]
/// message : "Wishlist item get successfully"

class GetWishlistModel {
  GetWishlistModel({
      bool? error, 
      List<Data>? data, 
      String? message,}){
    _error = error;
    _data = data;
    _message = message;
}

  GetWishlistModel.fromJson(dynamic json) {
    _error = json['error'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _message = json['message'];
  }
  bool? _error;
  List<Data>? _data;
  String? _message;
GetWishlistModel copyWith({  bool? error,
  List<Data>? data,
  String? message,
}) => GetWishlistModel(  error: error ?? _error,
  data: data ?? _data,
  message: message ?? _message,
);
  bool? get error => _error;
  List<Data>? get data => _data;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['message'] = _message;
    return map;
  }

}

/// id : 5
/// userid : "3"
/// productid : "1"
/// productvariantid : 1
/// created_at : "2022-04-26T11:43:56.000000Z"
/// updated_at : "2022-04-26T11:43:56.000000Z"
/// product : {"id":1,"name":"Product 1","category_id":1,"subcategory_id":1,"image":"22-03-23-1224117867.jpg","brand_id":1,"other_image":"[\"22-03-23-164801306776.jpg\"]","description":"Discription","short_desc":"Act t Connect","status":1,"created_at":"2022-03-23T05:24:27.000000Z","updated_at":"2022-03-23T05:24:27.000000Z"}

class Data {
  Data({
      int? id, 
      String? userid, 
      String? productid, 
      int? productvariantid, 
      String? createdAt, 
      String? updatedAt, 
      Product? product,}){
    _id = id;
    _userid = userid;
    _productid = productid;
    _productvariantid = productvariantid;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _product = product;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userid = json['userid'];
    _productid = json['productid'];
    _productvariantid = json['productvariantid'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _product = json['product'] != null ? Product.fromJson(json['product']) : null;
  }
  int? _id;
  String? _userid;
  String? _productid;
  int? _productvariantid;
  String? _createdAt;
  String? _updatedAt;
  Product? _product;
Data copyWith({  int? id,
  String? userid,
  String? productid,
  int? productvariantid,
  String? createdAt,
  String? updatedAt,
  Product? product,
}) => Data(  id: id ?? _id,
  userid: userid ?? _userid,
  productid: productid ?? _productid,
  productvariantid: productvariantid ?? _productvariantid,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  product: product ?? _product,
);
  int? get id => _id;
  String? get userid => _userid;
  String? get productid => _productid;
  int? get productvariantid => _productvariantid;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Product? get product => _product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userid'] = _userid;
    map['productid'] = _productid;
    map['productvariantid'] = _productvariantid;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_product != null) {
      map['product'] = _product?.toJson();
    }
    return map;
  }

}

/// id : 1
/// name : "Product 1"
/// category_id : 1
/// subcategory_id : 1
/// image : "22-03-23-1224117867.jpg"
/// brand_id : 1
/// other_image : "[\"22-03-23-164801306776.jpg\"]"
/// description : "Discription"
/// short_desc : "Act t Connect"
/// status : 1
/// created_at : "2022-03-23T05:24:27.000000Z"
/// updated_at : "2022-03-23T05:24:27.000000Z"

class Product {
  Product({
      int? id, 
      String? name, 
      int? categoryId, 
      int? subcategoryId, 
      String? image, 
      int? brandId, 
      String? otherImage, 
      String? description, 
      String? shortDesc, 
      int? status, 
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
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Product.fromJson(dynamic json) {
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
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _name;
  int? _categoryId;
  int? _subcategoryId;
  String? _image;
  int? _brandId;
  String? _otherImage;
  String? _description;
  String? _shortDesc;
  int? _status;
  String? _createdAt;
  String? _updatedAt;
Product copyWith({  int? id,
  String? name,
  int? categoryId,
  int? subcategoryId,
  String? image,
  int? brandId,
  String? otherImage,
  String? description,
  String? shortDesc,
  int? status,
  String? createdAt,
  String? updatedAt,
}) => Product(  id: id ?? _id,
  name: name ?? _name,
  categoryId: categoryId ?? _categoryId,
  subcategoryId: subcategoryId ?? _subcategoryId,
  image: image ?? _image,
  brandId: brandId ?? _brandId,
  otherImage: otherImage ?? _otherImage,
  description: description ?? _description,
  shortDesc: shortDesc ?? _shortDesc,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get name => _name;
  int? get categoryId => _categoryId;
  int? get subcategoryId => _subcategoryId;
  String? get image => _image;
  int? get brandId => _brandId;
  String? get otherImage => _otherImage;
  String? get description => _description;
  String? get shortDesc => _shortDesc;
  int? get status => _status;
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
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}