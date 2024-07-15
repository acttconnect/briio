/// error : false
/// orderDetailsData : [{"id":10,"user_id":1,"order_id":1,"prodid":3,"productname":"Product 3","variant":5,"product_variant_id":5,"quantity":1,"price":100,"discounted_price":80,"sub_total":80,"status":"0","active_status":"0","created_at":"2022-03-23T08:51:58.000000Z","updated_at":"2022-03-23T08:51:58.000000Z"},{"id":9,"user_id":1,"order_id":1,"prodid":2,"productname":"Product 2","variant":4,"product_variant_id":4,"quantity":2,"price":100,"discounted_price":90,"sub_total":90,"status":"0","active_status":"0","created_at":"2022-03-23T08:51:58.000000Z","updated_at":"2022-03-23T08:51:58.000000Z"},{"id":8,"user_id":1,"order_id":1,"prodid":2,"productname":"Product 2","variant":3,"product_variant_id":3,"quantity":1,"price":400,"discounted_price":350,"sub_total":350,"status":"0","active_status":"0","created_at":"2022-03-23T08:51:58.000000Z","updated_at":"2022-03-23T08:51:58.000000Z"},{"id":7,"user_id":1,"order_id":1,"prodid":2,"productname":"Product 2","variant":2,"product_variant_id":2,"quantity":1,"price":200,"discounted_price":180,"sub_total":180,"status":"0","active_status":"0","created_at":"2022-03-23T08:51:58.000000Z","updated_at":"2022-03-23T08:51:58.000000Z"},{"id":6,"user_id":1,"order_id":7,"prodid":3,"productname":"Product 3","variant":5,"product_variant_id":5,"quantity":3,"price":100,"discounted_price":80,"sub_total":80,"status":"0","active_status":"0","created_at":"2022-03-23T06:30:34.000000Z","updated_at":"2022-03-23T06:30:34.000000Z"}]
/// orderData : [{"id":12,"user_id":1,"mobile":"8794563258","orderid":"413412","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":null,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-06-28T13:06:45.000000Z","updated_at":"2022-06-28T13:06:45.000000Z"},{"id":11,"user_id":1,"mobile":"8794563258","orderid":"866006","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":null,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-06-28T13:06:26.000000Z","updated_at":"2022-06-28T13:06:26.000000Z"},{"id":10,"user_id":1,"mobile":"8794563258","orderid":"470223","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":null,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-04-26T06:36:42.000000Z","updated_at":"2022-04-26T06:36:42.000000Z"},{"id":9,"user_id":1,"mobile":"8794563258","orderid":"323538","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":null,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-04-25T13:36:06.000000Z","updated_at":"2022-04-25T13:36:06.000000Z"},{"id":8,"user_id":1,"mobile":"8794563258","orderid":"731849","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":null,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-04-25T13:35:39.000000Z","updated_at":"2022-04-25T13:35:39.000000Z"},{"id":7,"user_id":1,"mobile":"8794563258","orderid":"895103","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":null,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-04-25T13:34:40.000000Z","updated_at":"2022-04-25T13:34:40.000000Z"},{"id":6,"user_id":1,"mobile":"8794563258","orderid":"324828","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":null,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-04-25T13:33:29.000000Z","updated_at":"2022-04-25T13:33:29.000000Z"},{"id":5,"user_id":1,"mobile":"8794563258","orderid":"799211","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":null,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-04-25T13:32:48.000000Z","updated_at":"2022-04-25T13:32:48.000000Z"},{"id":1,"user_id":1,"mobile":"8794563258","orderid":"222353","total":790,"delivery_charge":100,"address":"west radhapur, Tapash, dharmanagar, 799250","delivaryperson_id":1,"delivared_date":null,"final_total":890,"payment_id":0,"payment_method":"COD","status":"0","active_status":"0","created_at":"2022-03-23T08:51:58.000000Z","updated_at":"2022-04-25T13:39:05.000000Z"}]

class GetOrderDataModel {
  GetOrderDataModel({
      bool? error, 
      List<OrderDetailsData>? orderDetailsData, 
      List<OrderData>? orderData,}){
    _error = error;
    _orderDetailsData = orderDetailsData;
    _orderData = orderData;
}

  GetOrderDataModel.fromJson(dynamic json) {
    _error = json['error'];
    if (json['orderDetailsData'] != null) {
      _orderDetailsData = [];
      json['orderDetailsData'].forEach((v) {
        _orderDetailsData?.add(OrderDetailsData.fromJson(v));
      });
    }
    if (json['orderData'] != null) {
      _orderData = [];
      json['orderData'].forEach((v) {
        _orderData?.add(OrderData.fromJson(v));
      });
    }
  }
  bool? _error;
  List<OrderDetailsData>? _orderDetailsData;
  List<OrderData>? _orderData;
GetOrderDataModel copyWith({  bool? error,
  List<OrderDetailsData>? orderDetailsData,
  List<OrderData>? orderData,
}) => GetOrderDataModel(  error: error ?? _error,
  orderDetailsData: orderDetailsData ?? _orderDetailsData,
  orderData: orderData ?? _orderData,
);
  bool? get error => _error;
  List<OrderDetailsData>? get orderDetailsData => _orderDetailsData;
  List<OrderData>? get orderData => _orderData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_orderDetailsData != null) {
      map['orderDetailsData'] = _orderDetailsData?.map((v) => v.toJson()).toList();
    }
    if (_orderData != null) {
      map['orderData'] = _orderData?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 12
/// user_id : 1
/// mobile : "8794563258"
/// orderid : "413412"
/// total : 790
/// delivery_charge : 100
/// address : "west radhapur, Tapash, dharmanagar, 799250"
/// delivaryperson_id : null
/// delivared_date : null
/// final_total : 890
/// payment_id : 0
/// payment_method : "COD"
/// status : "0"
/// active_status : "0"
/// created_at : "2022-06-28T13:06:45.000000Z"
/// updated_at : "2022-06-28T13:06:45.000000Z"

class OrderData {
  OrderData({
      int? id, 
      int? userId, 
      String? mobile, 
      String? orderid, 
      int? total, 
      int? deliveryCharge, 
      String? address, 
      dynamic delivarypersonId, 
      dynamic delivaredDate, 
      int? finalTotal, 
      int? paymentId, 
      String? paymentMethod, 
      String? status, 
      String? activeStatus, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _mobile = mobile;
    _orderid = orderid;
    _total = total;
    _deliveryCharge = deliveryCharge;
    _address = address;
    _delivarypersonId = delivarypersonId;
    _delivaredDate = delivaredDate;
    _finalTotal = finalTotal;
    _paymentId = paymentId;
    _paymentMethod = paymentMethod;
    _status = status;
    _activeStatus = activeStatus;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  OrderData.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _mobile = json['mobile'];
    _orderid = json['orderid'];
    _total = json['total'];
    _deliveryCharge = json['delivery_charge'];
    _address = json['address'];
    _delivarypersonId = json['delivaryperson_id'];
    _delivaredDate = json['delivared_date'];
    _finalTotal = json['final_total'];
    _paymentId = json['payment_id'];
    _paymentMethod = json['payment_method'];
    _status = json['status'];
    _activeStatus = json['active_status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _userId;
  String? _mobile;
  String? _orderid;
  int? _total;
  int? _deliveryCharge;
  String? _address;
  dynamic _delivarypersonId;
  dynamic _delivaredDate;
  int? _finalTotal;
  int? _paymentId;
  String? _paymentMethod;
  String? _status;
  String? _activeStatus;
  String? _createdAt;
  String? _updatedAt;
OrderData copyWith({  int? id,
  int? userId,
  String? mobile,
  String? orderid,
  int? total,
  int? deliveryCharge,
  String? address,
  dynamic delivarypersonId,
  dynamic delivaredDate,
  int? finalTotal,
  int? paymentId,
  String? paymentMethod,
  String? status,
  String? activeStatus,
  String? createdAt,
  String? updatedAt,
}) => OrderData(  id: id ?? _id,
  userId: userId ?? _userId,
  mobile: mobile ?? _mobile,
  orderid: orderid ?? _orderid,
  total: total ?? _total,
  deliveryCharge: deliveryCharge ?? _deliveryCharge,
  address: address ?? _address,
  delivarypersonId: delivarypersonId ?? _delivarypersonId,
  delivaredDate: delivaredDate ?? _delivaredDate,
  finalTotal: finalTotal ?? _finalTotal,
  paymentId: paymentId ?? _paymentId,
  paymentMethod: paymentMethod ?? _paymentMethod,
  status: status ?? _status,
  activeStatus: activeStatus ?? _activeStatus,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get userId => _userId;
  String? get mobile => _mobile;
  String? get orderid => _orderid;
  int? get total => _total;
  int? get deliveryCharge => _deliveryCharge;
  String? get address => _address;
  dynamic get delivarypersonId => _delivarypersonId;
  dynamic get delivaredDate => _delivaredDate;
  int? get finalTotal => _finalTotal;
  int? get paymentId => _paymentId;
  String? get paymentMethod => _paymentMethod;
  String? get status => _status;
  String? get activeStatus => _activeStatus;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['mobile'] = _mobile;
    map['orderid'] = _orderid;
    map['total'] = _total;
    map['delivery_charge'] = _deliveryCharge;
    map['address'] = _address;
    map['delivaryperson_id'] = _delivarypersonId;
    map['delivared_date'] = _delivaredDate;
    map['final_total'] = _finalTotal;
    map['payment_id'] = _paymentId;
    map['payment_method'] = _paymentMethod;
    map['status'] = _status;
    map['active_status'] = _activeStatus;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 10
/// user_id : 1
/// order_id : 1
/// prodid : 3
/// productname : "Product 3"
/// variant : 5
/// product_variant_id : 5
/// quantity : 1
/// price : 100
/// discounted_price : 80
/// sub_total : 80
/// status : "0"
/// active_status : "0"
/// created_at : "2022-03-23T08:51:58.000000Z"
/// updated_at : "2022-03-23T08:51:58.000000Z"

class OrderDetailsData {
  OrderDetailsData({
      int? id, 
      int? userId, 
      int? orderId, 
      int? prodid, 
      String? productname, 
      int? variant, 
      int? productVariantId, 
      int? quantity, 
      int? price, 
      int? discountedPrice, 
      int? subTotal, 
      String? status, 
      String? activeStatus, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _orderId = orderId;
    _prodid = prodid;
    _productname = productname;
    _variant = variant;
    _productVariantId = productVariantId;
    _quantity = quantity;
    _price = price;
    _discountedPrice = discountedPrice;
    _subTotal = subTotal;
    _status = status;
    _activeStatus = activeStatus;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  OrderDetailsData.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _orderId = json['order_id'];
    _prodid = json['prodid'];
    _productname = json['productname'];
    _variant = json['variant'];
    _productVariantId = json['product_variant_id'];
    _quantity = json['quantity'];
    _price = json['price'];
    _discountedPrice = json['discounted_price'];
    _subTotal = json['sub_total'];
    _status = json['status'];
    _activeStatus = json['active_status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _userId;
  int? _orderId;
  int? _prodid;
  String? _productname;
  int? _variant;
  int? _productVariantId;
  int? _quantity;
  int? _price;
  int? _discountedPrice;
  int? _subTotal;
  String? _status;
  String? _activeStatus;
  String? _createdAt;
  String? _updatedAt;
OrderDetailsData copyWith({  int? id,
  int? userId,
  int? orderId,
  int? prodid,
  String? productname,
  int? variant,
  int? productVariantId,
  int? quantity,
  int? price,
  int? discountedPrice,
  int? subTotal,
  String? status,
  String? activeStatus,
  String? createdAt,
  String? updatedAt,
}) => OrderDetailsData(  id: id ?? _id,
  userId: userId ?? _userId,
  orderId: orderId ?? _orderId,
  prodid: prodid ?? _prodid,
  productname: productname ?? _productname,
  variant: variant ?? _variant,
  productVariantId: productVariantId ?? _productVariantId,
  quantity: quantity ?? _quantity,
  price: price ?? _price,
  discountedPrice: discountedPrice ?? _discountedPrice,
  subTotal: subTotal ?? _subTotal,
  status: status ?? _status,
  activeStatus: activeStatus ?? _activeStatus,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get userId => _userId;
  int? get orderId => _orderId;
  int? get prodid => _prodid;
  String? get productname => _productname;
  int? get variant => _variant;
  int? get productVariantId => _productVariantId;
  int? get quantity => _quantity;
  int? get price => _price;
  int? get discountedPrice => _discountedPrice;
  int? get subTotal => _subTotal;
  String? get status => _status;
  String? get activeStatus => _activeStatus;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['order_id'] = _orderId;
    map['prodid'] = _prodid;
    map['productname'] = _productname;
    map['variant'] = _variant;
    map['product_variant_id'] = _productVariantId;
    map['quantity'] = _quantity;
    map['price'] = _price;
    map['discounted_price'] = _discountedPrice;
    map['sub_total'] = _subTotal;
    map['status'] = _status;
    map['active_status'] = _activeStatus;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}