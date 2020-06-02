import 'package:encomendei/splash.dart';
import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/views/history/history.pages.dart';
import 'package:encomendei/views/initial/initial.view.dart';
import 'package:encomendei/views/menu/menu.view.dart';
import 'package:encomendei/views/notification/notification.page.dart';
import 'package:encomendei/views/orders/add_order.page.dart';
import 'package:encomendei/views/orders/orders.page.dart';
import 'package:encomendei/views/products/add_product.page.dart';
import 'package:encomendei/views/products/products.page.dart';
import 'package:encomendei/views/profile/profile.page.dart';
import 'package:encomendei/views/publish/publish.page.dart';
import 'package:encomendei/views/sells/add_sell.page.dart';
import 'package:encomendei/views/sells/sellinfo.page.dart';
import 'package:encomendei/views/sells/sells.page.dart';
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
        initialRoute: '/splash',
        routes: {
          '/' : (context) => MenuView(),
          '/start' : (context) => InitialView(),
          '/sell' : (context) => SellsPage(),
          '/order' : (context) => OrdersPage(),
          '/sell/info' : (context) => SellInfoPage(sellID: 'N9Sr9d4KsyQ6GpQUYvgs'),
          '/signup' : (context) => SignupView(),
          '/signin' : (context) => SigninView(),
          '/profile' : (context) => ProfilePage(),
          '/history' : (context) => HistoryPage(),
          '/products' : (context) => ProductsPage(),
          '/publish' : (context) => PublishPage(),
          '/splash' : (context) => Splash(),
          '/notification' : (context) => NotificationPage(),
          '/add/sell' : (context) => AddSellPage(),
          '/add/order' : (context) => AddOrderPage(),
          '/add/product' : (context) => AddProductPage(), 
        }
      ),
    );
  }
}