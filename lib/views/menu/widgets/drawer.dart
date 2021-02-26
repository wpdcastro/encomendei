import 'package:encomendei/constants/constantRoutes.dart';
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
                //Navigator.pushNamed(context, ConstantRoutes);
              },
            ),
            ListTile(
              title: Text('Vendas'),
              onTap: () {
                Navigator.pushNamed(context, ConstantRoutes.SellPageRoute);
              },
            ),
            ListTile(
              title: Text('Categorias'),
              onTap: () {
                Navigator.pushNamed(context, ConstantRoutes.SellPageRoute);
              },
            ),
            ListTile(
              title: Text('Encomendas'),
              onTap: () {
                Navigator.pushNamed(context, ConstantRoutes.SellPageRoute);
              },
            ),
            ListTile(
              title: Text('Configurações'),
              onTap: () {
                Navigator.pushNamed(context, ConstantRoutes.SellPageRoute);
              },
            ),
            ListTile(
              title: Text('Sair'),
              onTap: () {
                Navigator.pushNamed(context, ConstantRoutes.SellPageRoute);
              },
            ),

          ],
        ),
      
    );
  }
}