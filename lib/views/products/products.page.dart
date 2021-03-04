import 'dart:convert';

import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/model/product.model.dart';
import 'package:encomendei/services/product.service.dart';
import 'package:encomendei/views/sells/widgets/category.dart';
import 'package:encomendei/views/products/widgets/product.widget.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({Key key}) : super(key: key);

  @override
  _ProductsPage createState() => _ProductsPage();
}

class _ProductsPage extends State<ProductsPage> {
  final service = new ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produtos")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, ConstantRoutes.AddProductPageRoute);
        },
        child: Icon(Icons.add),
      ),
      body: Column(children: <Widget>[
        Container(
          width: 360,
          child: Center(
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
            children: <Widget>[
              SizedBox(width: 30),
              Text(
                "Categorias",
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
            children: <Widget>[
              CategoryWidget(
                name: "Gelinhos",
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                color: Colors.lightBlue,
              ),
              SizedBox(width: 10),
              CategoryWidget(
                name: "Sorvetes",
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                color: Colors.lightGreen,
              ),
              SizedBox(width: 10),
              CategoryWidget(
                name: "Picolés",
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                color: Colors.amberAccent,
              ),
              SizedBox(width: 10),
              CategoryWidget(
                name: "Doces",
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                color: Colors.brown,
              ),
              SizedBox(width: 10),
              CategoryWidget(
                name: "Salgados",
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              FutureBuilder(
                  future: service.getProducts(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Product>> snapshot) {
                    print("SNAPSHOT");
                    print(snapshot);
                    print(snapshot.hasData);
                    if (!snapshot.hasData)
                      return Container(child: Text("Nao encontrado"));
                    ;
                    List content = snapshot.data;
                    print("Aqui !!!");
                    return new ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: new EdgeInsets.all(6.0),
                      itemCount: content.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductWidget(
                          image:
                              "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                          name: content[index]['name'],
                          price: content[index]['price'],
                        );
                      },
                    );
                  }),

              /*
              service.getProducts().map(
                    (Product product) => print("foi"),
                    print(product),
                    ProductWidget(
                      image:
                          "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                      name: product.description,
                      price: product.price,
                    ),
                  ),
                  */
              ProductWidget(
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                name: "Gelinho de Morango",
                price: "R\$ 0.50",
              ),
              ProductWidget(
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                name: "Gelinho de Morango",
                price: "R\$ 0.50",
              ),
              ProductWidget(
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                name: "Gelinho de Morango",
                price: "R\$ 0.50",
              ),
              ProductWidget(
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                name: "Gelinho de Morango",
                price: "R\$ 0.50",
              ),
              ProductWidget(
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                name: "Gelinho de Morango",
                price: "R\$ 0.50",
              ),
              ProductWidget(
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                name: "Gelinho de Morango",
                price: "R\$ 0.50",
              ),
              ProductWidget(
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                name: "Gelinho de Morango",
                price: "R\$ 0.50",
              ),
              ProductWidget(
                image:
                    "https://t1.rg.ltmcdn.com/pt/images/5/4/2/geladinho_gourmet_de_morango_8245_600.jpg",
                name: "Gelinho de Morango",
                price: "R\$ 0.50",
              ),
            ],
          ),

          // Button(label: 'teste', route: 'teste', background: Colors.blueAccent, colorLabel: Colors.yellowAccent),
        ),
      ]),
    );
  }
}
