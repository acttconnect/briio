/// error : false
/// data : {"id":1,"name":"krs","l_name":"tec","email":"krs@gmail.com","phone":"918709678738","state":"Bihar","city":"Nawada","pincode":"805124","address":"Dhewdha","company_name":"KRS8TEC","gst_number":"123456789krs","holemarks_license":"24","verified":0,"image":null,"created_at":"2022-07-01T06:03:15.000000Z","updated_at":"2022-07-01T06:03:15.000000Z"}

class LoginModel {
  LoginModel({
      bool? error, 
      Data? data,}){
    _error = error;
    _data = data;
}

  LoginModel.fromJson(dynamic json) {
    _error = json['error'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _error;
  Data? _data;
LoginModel copyWith({  bool? error,
  Data? data,
}) => LoginModel(  error: error ?? _error,
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

/// id : 1
/// name : "krs"
/// l_name : "tec"
/// email : "krs@gmail.com"
/// phone : "918709678738"
/// state : "Bihar"
/// city : "Nawada"
/// pincode : "805124"
/// address : "Dhewdha"
/// company_name : "KRS8TEC"
/// gst_number : "123456789krs"
/// holemarks_license : "24"
/// verified : 0
/// image : null
/// created_at : "2022-07-01T06:03:15.000000Z"
/// updated_at : "2022-07-01T06:03:15.000000Z"

class Data {
  Data({
      int? id, 
      String? name, 
      String? lName, 
      String? email, 
      String? phone, 
      String? state, 
      String? city, 
      String? pincode, 
      String? address, 
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
  String? _state;
  String? _city;
  String? _pincode;
  String? _address;
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
  String? state,
  String? city,
  String? pincode,
  String? address,
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
  String? get state => _state;
  String? get city => _city;
  String? get pincode => _pincode;
  String? get address => _address;
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