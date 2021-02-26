import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:encomendei/constants/constantSystem.dart';
import 'package:encomendei/widgets/line.widget.dart';
import 'package:flutter/material.dart';

class SellInfoPage extends StatelessWidget {

  final String sellID;

  const SellInfoPage({Key key, this.sellID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar( 
        title: Text("Detalhes da Venda"),
      ),

      body: Column(children: <Widget> [

        SizedBox(height: 10),

        Container(
          width: _pageWidth,
          height: 60,
          child: Column( 
            children: <Widget> [ 
              Column( 
                children: <Widget> [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget> [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage("https://i.imgur.com/BoN9kdC.png")
                          )
                        ),
                      ),
                      Column( 
                        children: <Widget> [
                          Text('Chris Johnson',
                            textAlign: TextAlign.left, 
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Rubin Residence Hall, New York, NY 10003',
                            textAlign: TextAlign.left,  
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ]
          ), 
        ),

        SizedBox(height: 10),
        
        LineWidget(), 
        
        Text('teste $sellID'),


        Expanded( 
          child: StreamBuilder( 
            //stream: Firestore.instance.collection('vendas').snapshots(),
            stream: Firestore.instance.collection('vendas').document(sellID).snapshots(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {

            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            switch (snapshot.connectionState) { 
              case ConnectionState.waiting:
                return LinearProgressIndicator();
                break;
              default:
                print('I can remember');
                var sellItem = snapshot.data['itens'];
                
               // for (var item in sellItem) { 
               //   if (item is String) print("É STRING");
                  //var json1 = json.decode(item);

               // }
                
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                  
                    
                  ],
                );

                return Center( 
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: snapshot.data['itens'].map <Widget> ((DocumentSnapshot doc) {
                      
                      print(doc);
                      print(sellID);


                      return ListTile(
                        leading: Image.network("https://i.imgur.com/BoN9kdC.png"),
                      );
                    }).toList(),
                  ),
                );
              }
            },
          ),
        ),

        SizedBox(height: 10),

        Expanded(
          child: SingleChildScrollView(          
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget> [
                Container( 
                  width: _pageWidth,
                  color: Colors.grey.withOpacity(0.3),
                  child: Column( 
                    children: <Widget> [  
                      
                      Text('Pedido', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      LineWidget(),
                    
                      Table(
                      children: [ 
                        TableRow(
                          children: [
                            Center(child: Text('Item', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('Quantidade', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('Valor', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),                      
                        TableRow(
                          children: [
                            Center(child: Text('Gelinho Morango', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('10', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),
                      ]
                    ),
                    ],
                  ),
                ),
      
              SizedBox(height: 20,),

              Container( 
                width: _pageWidth,
                color: Colors.grey.withOpacity(0.3),
                child: Column( children: <Widget> [  
                    Text('Acompanhamento', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    LineWidget(), 

                    Table(
                      children: [ 
                        TableRow(
                          children: [
                            Center(child: Text('Data Pedido', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('06/05/2022', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),
                        TableRow(
                          children: [
                            Center(child: Text('Hora Pedido', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('21:00', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),
                        TableRow(
                          children: [
                            Center(child: Text('Data Agendada', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('06/05/2022', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),
                        TableRow(
                          children: [
                            Center(child: Text('Data Entrega', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('06/05/2022', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),
                        TableRow(
                          children: [
                            Center(child: Text('Hora Entrega', style: TextStyle(fontWeight: FontWeight.bold,),)),
                            Center(child: Text('12:35', style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),
                      ]
                    ),
                  ],
                ),
              ),

              ],
            ),
          ),
        ),

        SizedBox(height: 225),

        Row(
          children: <Widget> [
            Container(
              color: Colors.green[300],
              height: 40, 
              width: _pageWidth,
              child: Center( 
                child: Text('Entregue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            Container(
              color: ConstantSystem.SystemColor,
              height: 60, 
              width: _pageWidth / 2,
              child: Center( 
                child: Text('Valor Total',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.redAccent[400],
              margin: const EdgeInsets.only(bottom: 0.0),
              height: 60, 
              width: _pageWidth / 2,
              child: Center( 
                child: Text("RS 150,00",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ],
        )
      ],)
    );
  }
}