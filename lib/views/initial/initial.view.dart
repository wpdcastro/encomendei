
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/widgets/button.dart';
import 'package:flutter/material.dart';

class InitialView extends StatelessWidget {
  final _testImage = 'https://images.unsplash.com/photo-1547665979-bb809517610d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80';
  
  @override
  Widget build(BuildContext context) {
    double _statusWidth = MediaQuery.of(context).padding.top;

    return Scaffold(

      body : Stack(
        children: <Widget>[
          Container( 
            child: Column(
              children: <Widget> [
                Container(
                  height: _statusWidth,
                  color: Colors.lightBlueAccent,
                ),

                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage( 
                      image: NetworkImage(_testImage),
                      //image: AssetImage('images/background_initial.jpg'),
                      //image: Image.asset("images/background_initial.jpg"),
                      fit: BoxFit.cover
                    ),
                  ),
                ),

              Container(
                  child : Image(
                    height: 140,
                    width: 180,
                    //image: AssetImage('images/logo_white.jpeg'),
                    image: NetworkImage('https://picsum.photos/200',),
                  ),
              ),

              Container(
                child: Row(
                  children: <Widget> [
                    SizedBox(width: 130,),
                    Text(
                      "Bem Vindo ao", 
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ), 
              ),

              Container(
                child: Row(
                  children: <Widget> [
                    SizedBox(width: 130,),
                    Text(
                      "Encomendei", 
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ), 
              ),

                Button(
                  label: 'Já possui conta? Entre aqui', 
                  route: ConstantRoutes.SignupPageRoute,
                  background: Colors.white, 
                  colorLabel: Colors.black
                ),

                Button(
                  label: 'Quero fazer parte', 
                  route: ConstantRoutes.SignupPageRoute,
                  background: Colors.redAccent, 
                  colorLabel: Colors.white
                ),
                
              ],
            ), 
          ),
        ],
      ),
    );
  }
}