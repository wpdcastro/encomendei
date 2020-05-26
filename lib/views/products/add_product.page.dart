import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {

  AddProductPage({Key key}) : super(key: key);

  @override
  _AddProductPageState createState() => _AddProductPageState();

}

class _AddProductPageState extends State<AddProductPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de Produto")),
      body: Text("Insira seu code aqui"),
    );
  }
}