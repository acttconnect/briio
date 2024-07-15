import 'dart:convert';
/// error : true
/// message : [{"id":3,"product_name":null,"title":null,"order_id":221,"status":1,"user_id":70,"message":null,"created_at":"2022-08-30T06:32:57.000000Z","updated_at":"2022-08-30T06:32:57.000000Z"}]

NewNotificationModel newNotificationModelFromJson(String str) => NewNotificationModel.fromJson(json.decode(str));
String newNotificationModelToJson(NewNotificationModel data) => json.encode(data.toJson());
class NewNotificationModel {
  NewNotificationModel({
      bool? error, 
      List<Message>? message,}){
    _error = error;
    _message = message;
}

  NewNotificationModel.fromJson(dynamic json) {
    _error = json['error'];
    if (json['message'] != null) {
      _message = [];
      json['message'].forEach((v) {
        _message?.add(Message.fromJson(v));
      });
    }
  }
  bool? _error;
  List<Message>? _message;
NewNotificationModel copyWith({  bool? error,
  List<Message>? message,
}) => NewNotificationModel(  error: error ?? _error,
  message: message ?? _message,
);
  bool? get error => _error;
  List<Message>? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_message != null) {
      map['message'] = _message?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 3
/// product_name : null
/// title : null
/// order_id : 221
/// status : 1
/// user_id : 70
/// message : null
/// created_at : "2022-08-30T06:32:57.000000Z"
/// updated_at : "2022-08-30T06:32:57.000000Z"

Message messageFromJson(String str) => Message.fromJson(json.decode(str));
String messageToJson(Message data) => json.encode(data.toJson());
class Message {
  Message({
      int? id, 
      dynamic productName, 
      dynamic title, 
      int? orderId, 
      int? status, 
      int? userId, 
      dynamic message, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _productName = productName;
    _title = title;
    _orderId = orderId;
    _status = status;
    _userId = userId;
    _message = message;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Message.fromJson(dynamic json) {
    _id = json['id'];
    _productName = json['product_name'];
    _title = json['title'];
    _orderId = json['order_id'];
    _status = json['status'];
    _userId = json['user_id'];
    _message = json['message'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  dynamic _productName;
  dynamic _title;
  int? _orderId;
  int? _status;
  int? _userId;
  dynamic _message;
  String? _createdAt;
  String? _updatedAt;
Message copyWith({  int? id,
  dynamic productName,
  dynamic title,
  int? orderId,
  int? status,
  int? userId,
  dynamic message,
  String? createdAt,
  String? updatedAt,
}) => Message(  id: id ?? _id,
  productName: productName ?? _productName,
  title: title ?? _title,
  orderId: orderId ?? _orderId,
  status: status ?? _status,
  userId: userId ?? _userId,
  message: message ?? _message,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  dynamic get productName => _productName;
  dynamic get title => _title;
  int? get orderId => _orderId;
  int? get status => _status;
  int? get userId => _userId;
  dynamic get message => _message;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['product_name'] = _productName;
    map['title'] = _title;
    map['order_id'] = _orderId;
    map['status'] = _status;
    map['user_id'] = _userId;
    map['message'] = _message;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}