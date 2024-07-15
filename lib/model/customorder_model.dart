import 'dart:convert';

CustomOrderModel customOrderModelFromJson(String str) =>
    CustomOrderModel.fromJson(json.decode(str));
String customOrderModelToJson(CustomOrderModel data) =>
    json.encode(data.toJson());

class CustomOrderModel {
  CustomOrderModel({
    bool? error,
    List<Data>? data,
  }) {
    _error = error;
    _data = data;
  }

  CustomOrderModel.fromJson(dynamic json) {
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
  CustomOrderModel copyWith({
    bool? error,
    List<Data>? data,
  }) =>
      CustomOrderModel(
        error: error ?? _error,
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
    String? orderId,
    num? cid,
    String? productName,
    num? categoryId,
    String? caret,
    String? gram,
    String? imagepicker,
    String? description,
    String? bangleSize,
    dynamic size,
    String? status,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _orderId = orderId;
    _cid = cid;
    _productName = productName;
    _categoryId = categoryId;
    _caret = caret;
    _gram = gram;
    _imagepicker = imagepicker;
    _description = description;
    _bangleSize = bangleSize;
    _size = size;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _orderId = json['order_id'];
    _cid = json['cid'];
    _productName = json['product_name'];
    _categoryId = json['category_id'];
    _caret = json['caret'];
    _gram = json['gram'];
    _imagepicker = json['imagepicker'];
    _description = json['description'];
    _bangleSize = json['bangle_size'];
    _size = json['size'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _orderId;
  num? _cid;
  String? _productName;
  num? _categoryId;
  String? _caret;
  String? _gram;
  String? _imagepicker;
  String? _description;
  String? _bangleSize;
  dynamic _size;
  String? _status;
  String? _createdAt;
  String? _updatedAt;
  Data copyWith({
    num? id,
    String? orderId,
    num? cid,
    String? productName,
    num? categoryId,
    String? caret,
    String? gram,
    String? imagepicker,
    String? description,
    String? bangleSize,
    dynamic size,
    String? status,
    String? createdAt,
    String? updatedAt,
  }) =>
      Data(
        id: id ?? _id,
        orderId: orderId ?? _orderId,
        cid: cid ?? _cid,
        productName: productName ?? _productName,
        categoryId: categoryId ?? _categoryId,
        caret: caret ?? _caret,
        gram: gram ?? _gram,
        imagepicker: imagepicker ?? _imagepicker,
        description: description ?? _description,
        bangleSize: bangleSize ?? _bangleSize,
        size: size ?? _size,
        status: status ?? _status,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get orderId => _orderId;
  num? get cid => _cid;
  String? get productName => _productName;
  num? get categoryId => _categoryId;
  String? get caret => _caret;
  String? get gram => _gram;
  String? get imagepicker => _imagepicker;
  String? get description => _description;
  String? get bangleSize => _bangleSize;
  dynamic get size => _size;
  String? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['order_id'] = _orderId;
    map['cid'] = _cid;
    map['product_name'] = _productName;
    map['category_id'] = _categoryId;
    map['caret'] = _caret;
    map['gram'] = _gram;
    map['imagepicker'] = _imagepicker;
    map['description'] = _description;
    map['bangle_size'] = _bangleSize;
    map['size'] = _size;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
