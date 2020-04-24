
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/stores/app.store.dart';
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
      
      body: Stack( 
        children: <Widget> [

          Container(
            color: Colors.redAccent,
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
            child: GridView.count(
              
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(12),
              addAutomaticKeepAlives: true,
              crossAxisCount: 2,
              children: <Widget> [
              
                SizedBox(
                  height: 280,
                ),

                SizedBox(
                  height: 280,
                ),

                MenuItem(  
                  name: 'Vendas',
                  route: ConstantRoutes.SellPageRoute,
                  box_color: Colors.redAccent,
                  icon: Icon(
                    Icons.local_grocery_store,
                    color: Colors.white,
                    size: 55.0,
                  ),
                ),

                MenuItem(  
                  name: 'Produtos', 
                  route: ConstantRoutes.ProductsPageRoute,
                  box_color: Colors.redAccent,
                  icon: Icon(
                    Icons.local_grocery_store,
                    color: Colors.white,
                    size: 55.0,
                  ),
                ),

                MenuItem(  
                  name: 'Publicar',
                  route: ConstantRoutes.PublishPageRoute,
                  box_color: Colors.redAccent,
                  icon: Icon(
                    Icons.folder,
                    color: Colors.white,
                    size: 55.0,
                  ),
                ),

                MenuItem(  
                  name: 'Histórico',
                  route: ConstantRoutes.HistoryPageRoute,
                  box_color: Colors.redAccent,
                  icon: Icon(
                    Icons.phonelink_setup,
                    color: Colors.white,
                    size: 55.0,
                  ),
                ),
                
              ],
            )
          )
        ],
      ),
    );
  }
}