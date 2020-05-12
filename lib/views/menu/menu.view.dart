
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/views/menu/widgets/drawer.dart';
import 'package:encomendei/views/menu/widgets/menu_itens.dart';
import 'package:encomendei/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<Appstore>(context);
    return Scaffold(

      drawer: DrawerMenu(),

      body: Stack( 
        children: <Widget> [

          Container(
            color: Colors.orangeAccent,
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Text(store.name),
                Text(store.email),
              ],
            ),
          ),
          
          Container(
            child: ListView(
              padding: const EdgeInsets.all(60),
              children: <Widget>[

                SizedBox(
                  height: 280,
                ),

                MenuCard(
                  route:  ConstantRoutes.SellPageRoute,
                  label: "Vendas"
                ),

                MenuCard(
                  route:  ConstantRoutes.SellPageRoute,
                  label: "Produtos"
                ),
                 
                MenuCard(
                  route:  ConstantRoutes.SellPageRoute,
                  label: "Encomendas"
                ),

                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Vendas')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Produtos')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Encomendas')),
                ),
              ],
            ),
          ),
        ],
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: Colors.blueGrey,

        items: <BottomNavigationBarItem> [

          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: Text("Home")
          ),

          BottomNavigationBarItem(
              
              icon: Icon(Icons.content_paste),
              title: Text("Nova Encomenda")
          ),

          BottomNavigationBarItem(
              icon: const Icon(Icons.add_shopping_cart),
              title: Text("Nova Venda")
          ),

          BottomNavigationBarItem(
              icon: const Icon(Icons.face),
              title: Text("Perfil")
          )

        ],
        onTap: (int i) {},
        selectedItemColor: Colors.blue,
      ),
    );
  }
}