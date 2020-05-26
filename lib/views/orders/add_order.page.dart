import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddOrderPage extends StatefulWidget {

  AddOrderPage({Key key}) : super(key: key);

  @override
  _AddOrderPageState createState() => _AddOrderPageState();

}

class _AddOrderPageState extends State<AddOrderPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de Encomenda")),
      body: Text("Insira seu code aqui"),
    );
  }
}