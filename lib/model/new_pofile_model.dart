import 'dart:convert';
/// error : false
/// data : {"id":61,"name":"Krs","l_name":"Krs","email":"krs@gmail.com","phone":"8709678738","state":null,"city":null,"pincode":null,"address":null,"company_name":"nawada","gst_number":"787546819","holemarks_license":"5898659","verified":0,"image":null,"created_at":"2022-08-08T13:09:54.000000Z","updated_at":"2022-08-08T13:09:54.000000Z"}

NewPofileModel newPofileModelFromJson(String str) => NewPofileModel.fromJson(json.decode(str));
String newPofileModelToJson(NewPofileModel data) => json.encode(data.toJson());
class NewPofileModel {
  NewPofileModel({
      bool? error, 
      Data? data,}){
    _error = error;
    _data = data;
}

  NewPofileModel.fromJson(dynamic json) {
    _error = json['error'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _error;
  Data? _data;
NewPofileModel copyWith({  bool? error,
  Data? data,
}) => NewPofileModel(  error: error ?? _error,
  data: data ?? _data,
);
  bool? get error => _error;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 61
/// name : "Krs"
/// l_name : "Krs"
/// email : "krs@gmail.com"
/// phone : "8709678738"
/// state : null
/// city : null
/// pincode : null
/// address : null
/// company_name : "nawada"
/// gst_number : "787546819"
/// holemarks_license : "5898659"
/// verified : 0
/// image : null
/// created_at : "2022-08-08T13:09:54.000000Z"
/// updated_at : "2022-08-08T13:09:54.000000Z"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int? id, 
      String? name, 
      String? lName, 
      String? email, 
      String? phone, 
      dynamic state, 
      dynamic city, 
      dynamic pincode, 
      dynamic address, 
      String? companyName, 
      String? gstNumber, 
      String? holemarksLicense, 
      int? verified, 
      dynamic image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _lName = lName;
    _email = email;
    _phone = phone;
    _state = state;
    _city = city;
    _pincode = pincode;
    _address = address;
    _companyName = companyName;
    _gstNumber = gstNumber;
    _holemarksLicense = holemarksLicense;
    _verified = verified;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _lName = json['l_name'];
    _email = json['email'];
    _phone = json['phone'];
    _state = json['state'];
    _city = json['city'];
    _pincode = json['pincode'];
    _address = json['address'];
    _companyName = json['company_name'];
    _gstNumber = json['gst_number'];
    _holemarksLicense = json['holemarks_license'];
    _verified = json['verified'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _name;
  String? _lName;
  String? _email;
  String? _phone;
  dynamic _state;
  dynamic _city;
  dynamic _pincode;
  dynamic _address;
  String? _companyName;
  String? _gstNumber;
  String? _holemarksLicense;
  int? _verified;
  dynamic _image;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  int? id,
  String? name,
  String? lName,
  String? email,
  String? phone,
  dynamic state,
  dynamic city,
  dynamic pincode,
  dynamic address,
  String? companyName,
  String? gstNumber,
  String? holemarksLicense,
  int? verified,
  dynamic image,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  lName: lName ?? _lName,
  email: email ?? _email,
  phone: phone ?? _phone,
  state: state ?? _state,
  city: city ?? _city,
  pincode: pincode ?? _pincode,
  address: address ?? _address,
  companyName: companyName ?? _companyName,
  gstNumber: gstNumber ?? _gstNumber,
  holemarksLicense: holemarksLicense ?? _holemarksLicense,
  verified: verified ?? _verified,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get name => _name;
  String? get lName => _lName;
  String? get email => _email;
  String? get phone => _phone;
  dynamic get state => _state;
  dynamic get city => _city;
  dynamic get pincode => _pincode;
  dynamic get address => _address;
  String? get companyName => _companyName;
  String? get gstNumber => _gstNumber;
  String? get holemarksLicense => _holemarksLicense;
  int? get verified => _verified;
  dynamic get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['l_name'] = _lName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['state'] = _state;
    map['city'] = _city;
    map['pincode'] = _pincode;
    map['address'] = _address;
    map['company_name'] = _companyName;
    map['gst_number'] = _gstNumber;
    map['holemarks_license'] = _holemarksLicense;
    map['verified'] = _verified;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}