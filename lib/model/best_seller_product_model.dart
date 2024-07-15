/// error : false
/// bestseller : [{"id":6,"name":"Bracelet","category_id":3,"subcategory_id":5,"image":"22-07-01-166115805.jpg","brand_id":1,"other_image":"[\"22-07-01-165665911271.jpg\"]","description":"good Product","short_desc":"good","status":1,"product_code":"product-1","gw":2,"stone":4,"nw":2,"caret":null,"created_at":null,"updated_at":null,"product_id":5,"user_id":1,"measurement":22,"measurement_unit_id":2,"price":"150","qty":32,"discounted_price":"100","stock":32,"isavailable":"Available","stock_unit_id":2,"uname":"gm"},{"id":7,"name":"chain","category_id":4,"subcategory_id":6,"image":"22-07-01-146440821.jpg","brand_id":2,"other_image":"[\"22-07-01-165665927973.png\"]","description":"<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">These are charm carrier&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">bracelets</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;with 8&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">slider</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;beads. This gives you the means to create your own story. You can add as many charms as you want or even&nbsp;...</span>","short_desc":"good product","status":1,"product_code":"product-2","gw":2,"stone":5,"nw":3,"caret":null,"created_at":null,"updated_at":null,"product_id":6,"user_id":1,"measurement":35,"measurement_unit_id":2,"price":"157.00","qty":14,"discounted_price":"150","stock":32,"isavailable":"Available","stock_unit_id":2,"uname":"gm"},{"id":8,"name":"chain2","category_id":3,"subcategory_id":5,"image":"22-07-01-259840210.jpg","brand_id":1,"other_image":"[\"22-07-01-165665940398.jpg\"]","description":"<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Rose&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Gold</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;Heart Flower Shaped&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Slider Bracelet</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">. 299 ₹ 349; View Product. Out of Stock. Rose&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Gold</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;Embellished Flower&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Slider Bracelet</span>","short_desc":"very good product","status":1,"product_code":"product-3","gw":2,"stone":6,"nw":4,"caret":null,"created_at":null,"updated_at":null,"product_id":7,"user_id":1,"measurement":105,"measurement_unit_id":2,"price":"500","qty":123,"discounted_price":"450","stock":45,"isavailable":"Available","stock_unit_id":1,"uname":"gm"}]

class BesSellerProductModel {
  BesSellerProductModel({
      bool? error, 
      List<Bestseller>? bestseller,}){
    _error = error;
    _bestseller = bestseller;
}

  BesSellerProductModel.fromJson(dynamic json) {
    _error = json['error'];
    if (json['bestseller'] != null) {
      _bestseller = [];
      json['bestseller'].forEach((v) {
        _bestseller?.add(Bestseller.fromJson(v));
      });
    }
  }
  bool? _error;
  List<Bestseller>? _bestseller;
BesSellerProductModel copyWith({  bool? error,
  List<Bestseller>? bestseller,
}) => BesSellerProductModel(  error: error ?? _error,
  bestseller: bestseller ?? _bestseller,
);
  bool? get error => _error;
  List<Bestseller>? get bestseller => _bestseller;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_bestseller != null) {
      map['bestseller'] = _bestseller?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 6
/// name : "Bracelet"
/// category_id : 3
/// subcategory_id : 5
/// image : "22-07-01-166115805.jpg"
/// brand_id : 1
/// other_image : "[\"22-07-01-165665911271.jpg\"]"
/// description : "good Product"
/// short_desc : "good"
/// status : 1
/// product_code : "product-1"
/// gw : 2
/// stone : 4
/// nw : 2
/// caret : null
/// created_at : null
/// updated_at : null
/// product_id : 5
/// user_id : 1
/// measurement : 22
/// measurement_unit_id : 2
/// price : "150"
/// qty : 32
/// discounted_price : "100"
/// stock : 32
/// isavailable : "Available"
/// stock_unit_id : 2
/// uname : "gm"

class Bestseller {
  Bestseller({
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
      dynamic caret, 
      dynamic createdAt, 
      dynamic updatedAt, 
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
      String? uname,}){
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
    _caret = caret;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
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
    _uname = uname;
}

  Bestseller.fromJson(dynamic json) {
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
    _caret = json['caret'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
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
    _uname = json['uname'];
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
  dynamic _caret;
  dynamic _createdAt;
  dynamic _updatedAt;
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
  String? _uname;
Bestseller copyWith({  int? id,
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
  dynamic caret,
  dynamic createdAt,
  dynamic updatedAt,
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
  String? uname,
}) => Bestseller(  id: id ?? _id,
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
  caret: caret ?? _caret,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
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
  uname: uname ?? _uname,
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
  dynamic get caret => _caret;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
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
  String? get uname => _uname;

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
    map['caret'] = _caret;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
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
    map['uname'] = _uname;
    return map;
  }

}