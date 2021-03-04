class Product {
  String id;
  String name;
  String description;
  String price;
  String stock;

  Product({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
  });

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    description = json['description'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['description'] = this.description;
    data['price'] = this.price;
    return data;
  }
}
