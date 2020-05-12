import 'package:encomendei/views/sells/widgets/canceled.dart';
import 'package:encomendei/views/sells/widgets/delivered.dart';
import 'package:encomendei/views/sells/widgets/late.dart';
import 'package:encomendei/views/sells/widgets/waiting.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({ Key key }) : super(key: key);
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<OrderPage> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Aguardando'),
    Tab(text: 'Em Atraso'),
    Tab(text: 'Cancelado'),
    Tab(text: 'Entregue'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Encomendas'),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
          indicator: BoxDecoration( 
            color: Colors.blueGrey.withOpacity(0.6)
          ),
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Waiting(),
          Late(),
          Canceled(),
          Delivered(),
        ],
      ),
    );
  }
}