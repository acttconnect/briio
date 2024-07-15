/// error : false
/// cart : "You have deleted Successfully"

class DeleteCardModel {
  DeleteCardModel({
      bool? error, 
      String? cart,}){
    _error = error;
    _cart = cart;
}

  DeleteCardModel.fromJson(dynamic json) {
    _error = json['error'];
    _cart = json['cart'];
  }
  bool? _error;
  String? _cart;
DeleteCardModel copyWith({  bool? error,
  String? cart,
}) => DeleteCardModel(  error: error ?? _error,
  cart: cart ?? _cart,
);
  bool? get error => _error;
  String? get cart => _cart;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['cart'] = _cart;
    return map;
  }

}