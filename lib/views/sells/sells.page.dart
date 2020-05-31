import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:flutter/material.dart';

class SellsPage extends StatefulWidget {

  SellsPage({Key key}) : super(key: key);

  @override
  _SellsPageState createState() => _SellsPageState();

}

class _SellsPageState extends State<SellsPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vendas")),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          Navigator.pushNamed(context, ConstantRoutes.AddSellPageRoute);  
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: Column(
          children: <Widget> [ 
            Expanded(
              child: StreamBuilder( 
                stream: Firestore.instance.collection('vendas').snapshots(),
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
                            
                            String sellID = doc.documentID;
                            String dataVenda = doc.data['data_venda'];
                            double total = doc.data['total'];

                            return ListTile(
                              leading: Image.network("https://i.imgur.com/BoN9kdC.png"),
                              title: Text(dataVenda),
                              subtitle: Text("R\$ " + total.toString()),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              onTap: () {
                                Navigator.pushNamed(context, ConstantRoutes.SellInfoPageRoute, arguments: {"sell_id": sellID});
                              },
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