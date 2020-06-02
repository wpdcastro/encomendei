class ProfileModel{
  String id;
  String name;
  String email;
  String tel;
  String address;
  String city;
  String image;
  String token;

  ProfileModel({
    this.id,
    this.name,
    this.email,
    this.tel,
    this.address,
    this.city,
    this.image,
    this.token
  });

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    address = json['address'];
    city = json['city'];
    image = json['image'];
    tel = json['tel'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['tel'] = this.tel;
    data['address'] = this.address;
    data['city'] = this.city;
    data['image'] = this.image;
    data['token'] = this.token;
    return data;
  }
}
