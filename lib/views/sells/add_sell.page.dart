import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddSellPage extends StatefulWidget {

  AddSellPage({Key key}) : super(key: key);

  @override
  _AddSellPageState createState() => _AddSellPageState();

}

class _AddSellPageState extends State<AddSellPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de Venda")),
      body: Text("Insira seu code aqui"),
    );
  }
}