import 'dart:convert';

import 'package:brij_jeweller/utils/const.dart';

/// error : false
/// product : [{"id":25,"name":"Plain Bracelet 12","category_id":10,"subcategory_id":9,"image":"22-08-06-252894432.png","brand_id":2,"other_image":null,"description":"<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span>","short_desc":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of","status":1,"product_code":"brj-87","gw":78,"stone":15,"nw":15,"is_feature":1,"caret":"24","created_at":"2022-08-06 13:10:32","updated_at":"2022-08-26 16:31:20","cname":"Naksi"}]
/// productVariant : [{"id":20,"product_id":25,"user_id":1,"measurement":45,"measurement_unit_id":2,"price":"14","qty":45,"discounted_price":"13","stock":45,"isavailable":"Available","stock_unit_id":null,"created_at":null,"updated_at":"2022-08-26 16:31:20","uname":"gm"}]

class NewDetailPageModel {
  NewDetailPageModel({
    bool? error,
    List<Product>? product,
    List<ProductVariant>? productVariant,
  }) {
    _error = error;
    _product = product;
    _productVariant = productVariant;
  }

  NewDetailPageModel.fromJson(dynamic json) {
    _error = json['error'];
    if (json['product'] != null) {
      _product = [];
      json['product'].forEach((v) {
        _product?.add(Product.fromJson(v));
      });
    }
    if (json['productVariant'] != null) {
      _productVariant = [];
      json['productVariant'].forEach((v) {
        _productVariant?.add(ProductVariant.fromJson(v));
      });
    }
  }

  bool? _error;
  List<Product>? _product;
  List<ProductVariant>? _productVariant;

  NewDetailPageModel copyWith({
    bool? error,
    List<Product>? product,
    List<ProductVariant>? productVariant,
  }) =>
      NewDetailPageModel(
        error: error ?? _error,
        product: product ?? _product,
        productVariant: productVariant ?? _productVariant,
      );

  bool? get error => _error;

  List<Product>? get product => _product;

  List<ProductVariant>? get productVariant => _productVariant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_product != null) {
      map['product'] = _product?.map((v) => v.toJson()).toList();
    }
    if (_productVariant != null) {
      map['productVariant'] = _productVariant?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 20
/// product_id : 25
/// user_id : 1
/// measurement : 45
/// measurement_unit_id : 2
/// price : "14"
/// qty : 45
/// discounted_price : "13"
/// stock : 45
/// isavailable : "Available"
/// stock_unit_id : null
/// created_at : null
/// updated_at : "2022-08-26 16:31:20"
/// uname : "gm"

class ProductVariant {
  ProductVariant({
    int? id,
    int? productId,
    int? userId,
    int? measurement,
    int? measurementUnitId,
    String? price,
    int? qty,
    String? discountedPrice,
    int? stock,
    String? isavailable,
    dynamic stockUnitId,
    dynamic createdAt,
    String? updatedAt,
    String? uname,
  }) {
    _id = id;
    _productId = productId;
    _userId = userId;
    _measurement = measurement;
    _measurementUnitId = measurementUnitId;
    _price = price;
    _qty = qty;
    _discountedPrice = discountedPrice;
    _stock = stock;
    _isavailable = isavailable;
    _stockUnitId = stockUnitId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _uname = uname;
  }

  ProductVariant.fromJson(dynamic json) {
    _id = json['id'];
    _productId = json['product_id'];
    _userId = json['user_id'];
    _measurement = json['measurement'];
    _measurementUnitId = json['measurement_unit_id'];
    _price = json['price'];
    _qty = json['qty'];
    _discountedPrice = json['discounted_price'];
    _stock = json['stock'];
    _isavailable = json['isavailable'];
    _stockUnitId = json['stock_unit_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _uname = json['uname'];
  }

  int? _id;
  int? _productId;
  int? _userId;
  int? _measurement;
  int? _measurementUnitId;
  String? _price;
  int? _qty;
  String? _discountedPrice;
  int? _stock;
  String? _isavailable;
  dynamic _stockUnitId;
  dynamic _createdAt;
  String? _updatedAt;
  String? _uname;

  ProductVariant copyWith({
    int? id,
    int? productId,
    int? userId,
    int? measurement,
    int? measurementUnitId,
    String? price,
    int? qty,
    String? discountedPrice,
    int? stock,
    String? isavailable,
    dynamic stockUnitId,
    dynamic createdAt,
    String? updatedAt,
    String? uname,
  }) =>
      ProductVariant(
        id: id ?? _id,
        productId: productId ?? _productId,
        userId: userId ?? _userId,
        measurement: measurement ?? _measurement,
        measurementUnitId: measurementUnitId ?? _measurementUnitId,
        price: price ?? _price,
        qty: qty ?? _qty,
        discountedPrice: discountedPrice ?? _discountedPrice,
        stock: stock ?? _stock,
        isavailable: isavailable ?? _isavailable,
        stockUnitId: stockUnitId ?? _stockUnitId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        uname: uname ?? _uname,
      );

  int? get id => _id;

  int? get productId => _productId;

  int? get userId => _userId;

  int? get measurement => _measurement;

  int? get measurementUnitId => _measurementUnitId;

  String? get price => _price;

  int? get qty => _qty;

  String? get discountedPrice => _discountedPrice;

  int? get stock => _stock;

  String? get isavailable => _isavailable;

  dynamic get stockUnitId => _stockUnitId;

  dynamic get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  String? get uname => _uname;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['product_id'] = _productId;
    map['user_id'] = _userId;
    map['measurement'] = _measurement;
    map['measurement_unit_id'] = _measurementUnitId;
    map['price'] = _price;
    map['qty'] = _qty;
    map['discounted_price'] = _discountedPrice;
    map['stock'] = _stock;
    map['isavailable'] = _isavailable;
    map['stock_unit_id'] = _stockUnitId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['uname'] = _uname;
    return map;
  }
}

/// id : 25
/// name : "Plain Bracelet 12"
/// category_id : 10
/// subcategory_id : 9
/// image : "22-08-06-252894432.png"
/// brand_id : 2
/// other_image : null
/// description : "<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span>"
/// short_desc : "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of"
/// status : 1
/// product_code : "brj-87"
/// gw : 78
/// stone : 15
/// nw : 15
/// is_feature : 1
/// caret : "24"
/// created_at : "2022-08-06 13:10:32"
/// updated_at : "2022-08-26 16:31:20"
/// cname : "Naksi"

class Product {
  Product({
    int? id,
    String? name,
    int? categoryId,
    int? subcategoryId,
    int? brandId,
    List<String> images = const [],
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
    String? cname,
  }) {
    _id = id;
    _name = name;
    _categoryId = categoryId;
    _subcategoryId = subcategoryId;
    _image = image;
    _brandId = brandId;
    _images = images;
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
    _cname = cname;
  }

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _categoryId = json['category_id'];
    _subcategoryId = json['subcategory_id'];
    _image = json['image'];
    _brandId = json['brand_id'];
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
    _cname = json['cname'];
    // _images = [
    //   "${imgPath}products/${json['image']}",
    //   ...(jsonDecode(json['other_image']) as List)
    //       .map((e) => "${imgPath}products/$e")
    //       .toList()
    // ];
    _images = [
      if (json['image'] != null) "${imgPath}products/${json['image']}",
      if (json['other_image'] != null)
        ...(jsonDecode(json['other_image']) as List)
            .map((e) => e != null
                ? "${imgPath}products/$e"
                : null) // Check if 'e' is null
            .whereType<String>() // Filter out null values
            .toList(),
    ];
  }

  int? _id;
  String? _name;
  int? _categoryId;
  int? _subcategoryId;
  String? _image;
  int? _brandId;

  // List<String>? _otherImage;
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
  String? _cname;
  late List<String> _images;

  Product copyWith({
    int? id,
    String? name,
    int? categoryId,
    int? subcategoryId,
    String? image,
    int? brandId,
    // List<String>? otherImage,
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
    String? cname,
  }) =>
      Product(
        id: id ?? _id,
        name: name ?? _name,
        categoryId: categoryId ?? _categoryId,
        subcategoryId: subcategoryId ?? _subcategoryId,
        brandId: brandId ?? _brandId,
        // otherImages: otherImage ?? _otherImage,
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
        cname: cname ?? _cname,
      );

  int? get id => _id;

  String? get name => _name;

  int? get categoryId => _categoryId;

  int? get subcategoryId => _subcategoryId;

  String? get image => _image;

  List<String?> get images => _images;

  int? get brandId => _brandId;

  // List<String>? get otherImage => _otherImage;
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

  String? get cname => _cname;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['category_id'] = _categoryId;
    map['subcategory_id'] = _subcategoryId;
    map['image'] = _image;
    map['brand_id'] = _brandId;
    // map['other_image'] = _otherImage;
    map['other_image'] = _images.sublist(1, _images.length);
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
    map['cname'] = _cname;

    return map;
  }
}
