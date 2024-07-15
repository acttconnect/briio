/// error : false
/// data : []

class SubCatogriesModel {
  SubCatogriesModel({
      bool? error, 
      List<dynamic>? data,}){
    _error = error;
    _data = data;
}

  SubCatogriesModel.fromJson(dynamic json) {
    _error = json['error'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        // _data?.add(Dynamic.fromJson(v));
      });
    }
  }
  bool? _error;
  List<dynamic>? _data;
SubCatogriesModel copyWith({  bool? error,
  List<dynamic>? data,
}) => SubCatogriesModel(  error: error ?? _error,
  data: data ?? _data,
);
  bool? get error => _error;
  List<dynamic>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}