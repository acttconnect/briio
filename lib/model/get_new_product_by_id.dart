/// error : false
/// product : [{"id":7,"name":"chain2","category_id":3,"subcategory_id":5,"image":"22-07-01-259840210.jpg","brand_id":1,"other_image":"[\"22-07-01-165665940398.jpg\"]","description":"<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Rose&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Gold</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;Heart Flower Shaped&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Slider Bracelet</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">. 299 ₹ 349; View Product. Out of Stock. Rose&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Gold</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;Embellished Flower&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Slider Bracelet</span>","short_desc":"very good product","status":1,"product_code":"product-3","gw":2,"stone":6,"nw":4,"created_at":"2022-07-01T07:10:03.000000Z","updated_at":"2022-07-01T07:10:03.000000Z"}]
/// productVariant : [{"id":8,"product_id":7,"user_id":1,"measurement":105,"measurement_unit_id":2,"price":"500","qty":123,"discounted_price":"450","stock":45,"isavailable":"Available","stock_unit_id":1,"created_at":null,"updated_at":null,"uname":"gm"}]

class GetNewProductById {
  GetNewProductById({
      bool? error, 
      List<Product>? product, 
      List<ProductVariant>? productVariant,}){
    _error = error;
    _product = product;
    _productVariant = productVariant;
}

  GetNewProductById.fromJson(dynamic json) {
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
GetNewProductById copyWith({  bool? error,
  List<Product>? product,
  List<ProductVariant>? productVariant,
}) => GetNewProductById(  error: error ?? _error,
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

/// id : 8
/// product_id : 7
/// user_id : 1
/// measurement : 105
/// measurement_unit_id : 2
/// price : "500"
/// qty : 123
/// discounted_price : "450"
/// stock : 45
/// isavailable : "Available"
/// stock_unit_id : 1
/// created_at : null
/// updated_at : null
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
      int? stockUnitId, 
      dynamic createdAt, 
      dynamic updatedAt, 
      String? uname,}){
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
  int? _stockUnitId;
  dynamic _createdAt;
  dynamic _updatedAt;
  String? _uname;
ProductVariant copyWith({  int? id,
  int? productId,
  int? userId,
  int? measurement,
  int? measurementUnitId,
  String? price,
  int? qty,
  String? discountedPrice,
  int? stock,
  String? isavailable,
  int? stockUnitId,
  dynamic createdAt,
  dynamic updatedAt,
  String? uname,
}) => ProductVariant(  id: id ?? _id,
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
  int? get stockUnitId => _stockUnitId;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
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

/// id : 7
/// name : "chain2"
/// category_id : 3
/// subcategory_id : 5
/// image : "22-07-01-259840210.jpg"
/// brand_id : 1
/// other_image : "[\"22-07-01-165665940398.jpg\"]"
/// description : "<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Rose&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Gold</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;Heart Flower Shaped&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Slider Bracelet</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">. 299 ₹ 349; View Product. Out of Stock. Rose&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Gold</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;Embellished Flower&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Slider Bracelet</span>"
/// short_desc : "very good product"
/// status : 1
/// product_code : "product-3"
/// gw : 2
/// stone : 6
/// nw : 4
/// created_at : "2022-07-01T07:10:03.000000Z"
/// updated_at : "2022-07-01T07:10:03.000000Z"

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
      String? productCode, 
      int? gw, 
      int? stone, 
      int? nw, 
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
    _productCode = json['product_code'];
    _gw = json['gw'];
    _stone = json['stone'];
    _nw = json['nw'];
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
  String? _productCode;
  int? _gw;
  int? _stone;
  int? _nw;
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
  String? productCode,
  int? gw,
  int? stone,
  int? nw,
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
  productCode: productCode ?? _productCode,
  gw: gw ?? _gw,
  stone: stone ?? _stone,
  nw: nw ?? _nw,
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
  String? get productCode => _productCode;
  int? get gw => _gw;
  int? get stone => _stone;
  int? get nw => _nw;
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
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}