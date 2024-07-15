class UserModel  {
  int? id;
  String firstName;
  String? secondName;
  String phoneNumber;
  String email;
  String? companyName;
  String? gstNumber;
  String? password;
  String? image;

  UserModel(
      {this.id,
      required this.firstName,
      this.secondName,
      required this.phoneNumber,
      required this.email,
      this.companyName,
      this.gstNumber,
      this.password,
      this.image});
  factory UserModel.fromMap(map) {
    return UserModel(
      id: map['id'],
      firstName:map['firstName'],
      secondName: map['secondName'],
      phoneNumber:map['phoneNumber'],
      email: map['email'],
      companyName:map['companyName'],
      gstNumber:map['gstNumber'],
      password: map['password'],
      image: map['image']
    );
  }
  Map<String,dynamic> toMap(){
    return{
      'id':id,
      'firstName':firstName,
      'secondName':secondName,
      'phoneNumber':phoneNumber,
      'email':email,
      'companyName':companyName,
      'gstNumber':gstNumber,
      'password':password,
      'image':image

    };
  }
}

