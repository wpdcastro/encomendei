import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/views/sells/widgets/category.dart';
import 'package:encomendei/views/sells/widgets/product.dart';
import 'package:encomendei/widgets/button.dart';
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
      resizeToAvoidBottomPadding: false,
      body: Container(
              child: Column(
                children: <Widget> [
              new Stack(
                  children: <Widget>[
                       new Center(
                           child: new CircleAvatar(
                              radius: 50.0,
                              backgroundColor: const Color(0xFF778899),
                                    ),
                               ),
                                new Center(
                                    child: new Image.asset("assets/images/photo_camera.png"),
                         ),
                     ],
                  ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nome do produto',
                  labelStyle: TextStyle(

                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )
                ),
                  validator: (String value) {
                    //return value.contains('@') ? 'Do not use the @ char.' : null;
                    if (value.isEmpty) {
                      return 'Prencha todos os campos';
                    }
                    return null;
                  },
              ),
              TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Descrição do produto',
                    labelStyle: TextStyle(

                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                    validator: (String value) {
                      //return value.contains('@') ? 'Do not use the @ char.' : null;
                      if (value.isEmpty) {
                        return 'Prencha todos os campos';
                      }
                      return null;
                    },
                ),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Quantidade em estoque',
                        labelStyle: TextStyle(

                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )
                      ),
                        validator: (String value) {
                          //return value.contains('@') ? 'Do not use the @ char.' : null;
                          if (value.isEmpty) {
                            return 'Prencha todos os campos';
                          }
                          return null;
                        },
                    ),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Preço',
                        hintText: 'RS',
                        labelStyle: TextStyle(

                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )
                      ),
                        validator: (String value) {
                          //return value.contains('@') ? 'Do not use the @ char.' : null;
                          if (value.isEmpty) {
                            return 'Prencha todos os campos';
                          }
                          return null;
                        },
                    ),
                    new DropdownButton<String>(
                        items: <String>['Gelinho', 'Picolés', 'Salgados', 'Outros'].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Center(
                      child: Text(
                        'Salvar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, ConstantRoutes.SellPageRoute);
                    },
                  ),
                ),
               )
            ],
          ),
        ),
    ); //Scaffold
  }
}
