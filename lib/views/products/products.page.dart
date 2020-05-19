import 'package:encomendei/views/products/widget/product.widget.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produtos"),),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[ 
          ProductWidget(
            image: "https://i.imgur.com/BoN9kdC.png",
            description : 'Gelinho de Morango',
            price: 12.20,
          ),
          ProductWidget(
            image: "https://i.imgur.com/BoN9kdC.png",
            description : 'Gelinho de Frango',
            price: 22.25,
          ),
        ],
      ),
    );
  }
}