import 'dart:convert';

AddressModel addressModelFromJson(String str) =>
    AddressModel.fromJson(json.decode(str));
String addressModelToJson(AddressModel data) => json.encode(data.toJson());

class AddressModel {
  AddressModel({
    bool? error,
    List<Data>? data,
  }) {
    _error = error;
    _data = data;
  }

  AddressModel.fromJson(dynamic json) {
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
  AddressModel copyWith({
    bool? error,
    List<Data>? data,
  }) =>
      AddressModel(
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
    String? userId,
    String? cname,
    String? mobile,
    String? landmark,
    String? address1,
    String? state,
    String? city,
    num? pincode,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _userId = userId;
    _name = cname;
    _mobile = mobile;
    _landmark = landmark;
    _address1 = address1;
    _state = state;
    _city = city;
    _pincode = pincode;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _name = json['cname'];
    _mobile = json['mobile'];
    _landmark = json['landmark'];
    _address1 = json['address_1'];
    _state = json['state'];
    _city = json['city'];
    _pincode = json['pincode'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _userId;
  String? _name;
  String? _mobile;
  String? _landmark;
  String? _address1;
  String? _state;
  String? _city;
  num? _pincode;
  String? _createdAt;
  String? _updatedAt;
  Data copyWith({
    num? id,
    String? userId,
    String? cname,
    String? mobile,
    String? landmark,
    String? address1,
    String? state,
    String? city,
    num? pincode,
    String? createdAt,
    String? updatedAt,
  }) =>
      Data(
        id: id ?? _id,
        userId: userId ?? _userId,
        cname: cname ?? _name,
        mobile: mobile ?? _mobile,
        landmark: landmark ?? _landmark,
        address1: address1 ?? _address1,
        state: state ?? _state,
        city: city ?? _city,
        pincode: pincode ?? _pincode,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get userId => _userId;
  String? get cname => _name;
  String? get mobile => _mobile;
  String? get landmark => _landmark;
  String? get address1 => _address1;
  String? get state => _state;
  String? get city => _city;
  num? get pincode => _pincode;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['cname'] = _name;
    map['mobile'] = _mobile;
    map['landmark'] = _landmark;
    map['address_1'] = _address1;
    map['state'] = _state;
    map['city'] = _city;
    map['pincode'] = _pincode;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
