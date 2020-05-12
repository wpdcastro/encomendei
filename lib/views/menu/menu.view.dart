
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/views/menu/widgets/drawer.dart';
import 'package:encomendei/views/menu/widgets/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<Appstore>(context);

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          icon: Icon(
            Icons.reorder,
            color: Colors.white
          ),
          onPressed: () {
            
          },
        ),

        title: Text("Encomendei"),

        actions: <Widget> [ 
          
          IconButton(
            icon: Icon(
              Icons.phonelink_ring,
              color: Colors.white
            ),
            onPressed: () {
              
            },
          ),
        ],

      ),

      drawer: DrawerMenu(),

      body: Stack(
        children: <Widget> [

          Container(
            color: Colors.deepOrangeAccent,
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
            color: Colors.deepOrangeAccent,
            child: ListView(
              //padding: const EdgeInsets.all(60),
              
              children: <Widget>[

                SizedBox(height: 50),

                MenuCard(
                  route:  ConstantRoutes.SellPageRoute,
                  label: "Vendas",
                ),

                SizedBox(height: 30),

                MenuCard(
                  route:  ConstantRoutes.OrderPageRoute,
                  label: "Encomendas",

                ),

                SizedBox(height: 30),
                 
                MenuCard(
                  route:  ConstantRoutes.ProductsPageRoute,
                  label: "Produtos",
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