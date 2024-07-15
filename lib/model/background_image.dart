class BackImage {
  int? id;
  String? name;
  String? subtitle;
  String? image;
  String? bgImage;
  int? status;
  String? createdAt;
  String? updatedAt;

  BackImage(
      {this.id,
        this.name,
        this.subtitle,
        this.image,
        this.bgImage,
        this.status,
        this.createdAt,
        this.updatedAt});

  BackImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    subtitle = json['subtitle'];
    image = json['image'];
    bgImage = "https://briio.in/uploads/homesliders/${json['bgimage']}";
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['subtitle'] = this.subtitle;
    data['image'] = this.image;
    data['bgimage'] = this.bgImage;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}