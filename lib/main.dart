import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/views/history/history.pages.dart';
import 'package:encomendei/views/initial/initial.view.dart';
import 'package:encomendei/views/menu/menu.view.dart';
import 'package:encomendei/views/orders/order.page.dart';
import 'package:encomendei/views/products/products.page.dart';
import 'package:encomendei/views/publish/publish.page.dart';
import 'package:encomendei/views/sells/sellinfo.page.dart';
import 'package:encomendei/views/sells/sells.view.dart';
import 'package:encomendei/views/signin/signin.page.dart';
import 'package:encomendei/views/signup/signup.view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Appstore>.value(value: Appstore())
      ],
      child: MaterialApp(
        title: 'Encomendei',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/start',
        routes: {
          '/' : (context) => MenuView(),
          '/start' : (context) => InitialView(),
          '/sell' : (context) => SellsView(),
          '/order' : (context) => OrderPage(),
          '/sell/info' : (context) => SellInfoPage(),
          '/signup' : (context) => SignupView(),
          '/signup' : (context) => SigninView(),
          '/history' : (context) => HistoryPage(),
          '/products' : (context) => ProductsPage(),
          '/publish' : (context) => PublishPage(),
        }
      ),
    );
  }
}