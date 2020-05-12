import 'package:encomendei/stores/app.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<Appstore>(context);
    
    return Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget> [

            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column( 
                children: <Widget> [ 
                  
                  Text(store.name),   
                  Text(store.email), 
                  
                ]
              ),
            ),

            ListTile(
              title: Text('Clientes'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Vendas'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Categorias'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Encomendas'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Configurações'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Sair'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),

          ],
        ),
      
    );
  }
}