class UserModel {
  String id;
  String name;
  String email;
  String fone;
  String password;
  String image;
  String token;

  UserModel({
    this.id,
    this.name, 
    this.email, 
    this.fone,
    this.password, 
    this.image, 
    this.token
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    image = json['image'];
    fone = json['fone'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['fone'] = this.fone;
    data['password'] = this.password;
    data['image'] = this.image;
    data['token'] = this.token;
    return data;
  }
}
