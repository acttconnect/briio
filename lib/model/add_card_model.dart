/// error : false
/// data : [{"id":4,"userid":"32","productid":"2","productvariationid":2,"quantity":"1","created_at":"2022-06-28T11:37:22.000000Z","updated_at":"2022-06-28T11:37:22.000000Z","products":{"id":2,"name":"Product 2","category_id":1,"subcategory_id":2,"image":"22-03-23-1194213380.jpg","brand_id":2,"other_image":"[\"22-03-23-164801327587.jpg\"]","description":"Description 1","short_desc":"ABC","status":1,"created_at":"2022-03-23T05:27:55.000000Z","updated_at":"2022-03-23T05:48:40.000000Z"}}]
/// message : "Product add successfully"

class AddCardModel {
  AddCardModel({
      bool? error, 
      List<Data>? data, 
      String? message,}){
    _error = error;
    _data = data;
    _message = message;
}

  AddCardModel.fromJson(dynamic json) {
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
AddCardModel copyWith({  bool? error,
  List<Data>? data,
  String? message,
}) => AddCardModel(  error: error ?? _error,
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

/// id : 4
/// userid : "32"
/// productid : "2"
/// productvariationid : 2
/// quantity : "1"
/// created_at : "2022-06-28T11:37:22.000000Z"
/// updated_at : "2022-06-28T11:37:22.000000Z"
/// products : {"id":2,"name":"Product 2","category_id":1,"subcategory_id":2,"image":"22-03-23-1194213380.jpg","brand_id":2,"other_image":"[\"22-03-23-164801327587.jpg\"]","description":"Description 1","short_desc":"ABC","status":1,"created_at":"2022-03-23T05:27:55.000000Z","updated_at":"2022-03-23T05:48:40.000000Z"}

class Data {
  Data({
      int? id, 
      String? userid, 
      String? productid, 
      int? productvariationid, 
      String? quantity, 
      String? createdAt, 
      String? updatedAt, 
      Products? products,}){
    _id = id;
    _userid = userid;
    _productid = productid;
    _productvariationid = productvariationid;
    _quantity = quantity;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _products = products;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userid = json['userid'];
    _productid = json['productid'];
    _productvariationid = json['productvariationid'];
    _quantity = json['quantity'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _products = json['products'] != null ? Products.fromJson(json['products']) : null;
  }
  int? _id;
  String? _userid;
  String? _productid;
  int? _productvariationid;
  String? _quantity;
  String? _createdAt;
  String? _updatedAt;
  Products? _products;
Data copyWith({  int? id,
  String? userid,
  String? productid,
  int? productvariationid,
  String? quantity,
  String? createdAt,
  String? updatedAt,
  Products? products,
}) => Data(  id: id ?? _id,
  userid: userid ?? _userid,
  productid: productid ?? _productid,
  productvariationid: productvariationid ?? _productvariationid,
  quantity: quantity ?? _quantity,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  products: products ?? _products,
);
  int? get id => _id;
  String? get userid => _userid;
  String? get productid => _productid;
  int? get productvariationid => _productvariationid;
  String? get quantity => _quantity;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Products? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userid'] = _userid;
    map['productid'] = _productid;
    map['productvariationid'] = _productvariationid;
    map['quantity'] = _quantity;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_products != null) {
      map['products'] = _products?.toJson();
    }
    return map;
  }

}

/// id : 2
/// name : "Product 2"
/// category_id : 1
/// subcategory_id : 2
/// image : "22-03-23-1194213380.jpg"
/// brand_id : 2
/// other_image : "[\"22-03-23-164801327587.jpg\"]"
/// description : "Description 1"
/// short_desc : "ABC"
/// status : 1
/// created_at : "2022-03-23T05:27:55.000000Z"
/// updated_at : "2022-03-23T05:48:40.000000Z"

class Products {
  Products({
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

  Products.fromJson(dynamic json) {
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
Products copyWith({  int? id,
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
}) => Products(  id: id ?? _id,
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