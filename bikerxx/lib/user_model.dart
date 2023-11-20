class UserModel {
  String? hAddress;
  String? name;
  String? image;
  String? phno;
  String? email;

  UserModel({this.name, this.hAddress, this.email, this.phno, this.image});

  UserModel.fromjson(Map<String, dynamic> json) {
    hAddress = json['home_address'];
    name = json['name'];
    phno = json['phno'];
    email = json['email'];
    image = json['image'];
  }
}
