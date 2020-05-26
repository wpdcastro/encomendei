import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {

  ProductsPage({Key key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();

}

class _ProductsPageState extends State<ProductsPage> {
  
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
      body: Container(
        child: Column(
          children: <Widget> [ 
            Expanded(
              child: StreamBuilder( 
                stream: Firestore.instance.collection('produtos').snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {

                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  switch (snapshot.connectionState) { 
                    case ConnectionState.waiting:
                      return LinearProgressIndicator();
                      break;
                    default:
                      return Center( 
                        child: ListView(
                          scrollDirection: Axis.vertical,
                        
                          
                          children: snapshot.data.documents.map <Widget> ((DocumentSnapshot doc) {

                            return ListTile(
                              //leading: Icon(Icons.people, size: 52),
                              leading: Image.network("https://i.imgur.com/BoN9kdC.png"),
                              title: Text(doc.data['nome']),
                              subtitle: Text("R\$ " + doc.data['preco'].toString()),
                            );

                          }).toList(),
                        ),
                      );
                    }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}