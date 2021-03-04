import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:encomendei/model/product.model.dart';

class ProductService {
  final Dio _dio = Dio();
  String url = "http://localhost:8080/product";

  Future<List<Product>> getProducts() async {
    try {
      //var response = await _dio.get('http://localhost:8080/product');
      var response = await _dio.get('$url/product');
      if (response.statusCode != 200) {
        throw Exception();
      } else {
        print("caraio ---------------");
        print(response.data);
        return (json.decode(response.data.toString()) as List)
            .map((jsonElement) => Product.fromJson(jsonElement))
            .toList();
      }
    } catch (error) {
      return error;
    }
  }

  getProducts1() async {
    var response = await _dio.get('$url/product');
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return (json.decode(response.data.toString()) as List);
    }
  }

  saveProduct(Product product) async {
    Response response = await _dio.get('$url/product');

    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return response.data;
    }
  }
}
