
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/views/menu/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomTabs extends StatefulWidget {
  
  const BottomTabs({ Key key }) : super(key: key);

  @override
  _BottomTabs createState() => _BottomTabs();
}

class _BottomTabs extends State<BottomTabs> {
  
  int currentTabIndex = 0;
  List<String> tabs = [ 
    ConstantRoutes.MenuPageRoute,
    ConstantRoutes.HistoryPageRoute,
    ConstantRoutes.NotificationPageRoute,
    ConstantRoutes.MenuPageRoute,
  ];

  onTapped (int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
  
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
              Navigator.pushNamed(context, ConstantRoutes.NotificationPageRoute);
            },
          ),
        ],

      ),

      drawer: DrawerMenu(),

      //body: Navigator.pushNamed(context, tabs[currentTabIndex]),
    
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentTabIndex,
        onTap: onTapped,
        
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

        selectedItemColor: Colors.blue,
      ),
    );
  }
}