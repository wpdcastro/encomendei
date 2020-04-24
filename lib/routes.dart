import 'package:encomendei/views/initial/initial.view.dart';
import 'package:encomendei/views/menu/menu.view.dart';
import 'package:encomendei/views/sells/sells.view.dart';
import 'package:encomendei/views/signup/signup.view.dart';
import 'package:flutter/material.dart';

import 'constants/constantRoutes.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
 
 switch (settings.name) {
    
    case ConstantRoutes.InitialPageRoute: 
      return MaterialPageRoute(builder:  (context) => InitialView());

    case ConstantRoutes.SignupPageRoute: 
      return MaterialPageRoute(builder:  (context) => SignupView());

    case ConstantRoutes.SellPageRoute: 
      return MaterialPageRoute(builder:  (context) => SellsView());

    default: 
      return MaterialPageRoute(builder:  (context) => MenuView());
  }
}