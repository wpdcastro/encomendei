import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/views/sells/widgets/category.dart';
import 'package:encomendei/views/sells/widgets/product.dart';
import 'package:encomendei/widgets/button.dart';
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
      body: Column(
        children: <Widget> [

          Container( 
            width: 360,
            child : Center( 
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Procure seu produto',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ), 
            ),
          ),
 
          Container(
            child: Row(
              children: <Widget> [
                SizedBox(width: 30),
                Text("Categorias",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ), 
          ),
          
          SizedBox(height: 20),

          Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.only(left: 50, right: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: <Widget> [
                  
                  CategoryWidget(
                    name: "Gelinhos",
                    image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                    color: Colors.lightBlue,
                  ),
                  
                  SizedBox(width: 10),
                  
                  CategoryWidget(
                    name: "Sorvetes",
                    image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                    color: Colors.lightGreen,
                  ),

                  SizedBox(width: 10),

                  CategoryWidget(
                    name: "Picolés",
                    image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                    color: Colors.amberAccent,
                  ),

                  SizedBox(width: 10),

                  CategoryWidget(
                    name: "Doces",
                    image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                    color: Colors.brown,
                  ),
                  
                  SizedBox(width: 10),

                  CategoryWidget(
                    name: "Salgados",
                    image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                    color: Colors.deepOrange,
                  ),

                ],
              ),
            ),

          SizedBox(height: 20,),

          Container(
            child: Row(
              children: <Widget> [
                SizedBox(width: 30),
                Text("Produtos",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ), 
          ), 
          
          Expanded(
            child:GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget> [

                ProductWidget(image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg", name: "Gelinho de Morango", price: "R\$ 0.50",),
                ProductWidget(image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg", name: "Gelinho de Morango", price: "R\$ 0.50",),
                ProductWidget(image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg", name: "Gelinho de Morango", price: "R\$ 0.50",),
                ProductWidget(image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg", name: "Gelinho de Morango", price: "R\$ 0.50",),
                ProductWidget(image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg", name: "Gelinho de Morango", price: "R\$ 0.50",),
                ProductWidget(image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg", name: "Gelinho de Morango", price: "R\$ 0.50",),
                ProductWidget(image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg", name: "Gelinho de Morango", price: "R\$ 0.50",),
                ProductWidget(image: "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg", name: "Gelinho de Morango", price: "R\$ 0.50",),

              ],
            ),
          ),

          //Button(label: 'teste', route: 'teste', background: Colors.blueAccent, colorLabel: Colors.yellowAccent),

          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
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
        ]
      ),
    );
  }
}