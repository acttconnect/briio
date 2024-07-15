/// error : true
/// wishlist : "You have deleted successfully"

class DeleteWishListModel {
  DeleteWishListModel({
      bool? error, 
      String? wishlist,}){
    _error = error;
    _wishlist = wishlist;
}

  DeleteWishListModel.fromJson(dynamic json) {
    _error = json['error'];
    _wishlist = json['wishlist'];
  }
  bool? _error;
  String? _wishlist;
DeleteWishListModel copyWith({  bool? error,
  String? wishlist,
}) => DeleteWishListModel(  error: error ?? _error,
  wishlist: wishlist ?? _wishlist,
);
  bool? get error => _error;
  String? get wishlist => _wishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['wishlist'] = _wishlist;
    return map;
  }

}