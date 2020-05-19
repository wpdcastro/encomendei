import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notificações"),),
      body: Column(children: <Widget>[ 
        Text("Insira o conteudo aqui"),
      ],),
    );
  }
}