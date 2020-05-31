
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InitialView extends StatefulWidget {
  
  const InitialView({ Key key }) : super(key: key);

  @override
  _InitialView createState() => _InitialView();
}

class _InitialView extends State<InitialView> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }
  
  @override
  Widget build(BuildContext context) {
    double _statusWidth = MediaQuery.of(context).padding.top;

    return Scaffold(
      body : Container(
        
        decoration: BoxDecoration(
                    image: DecorationImage( 
                      image: AssetImage('assets/images/start_image.jpg'),
                      fit: BoxFit.cover
                    ),
                  ),
        child:  Stack(
          children: <Widget> [
            
            Container( 

              child: Column(

                children: <Widget> [

                  //Container(
                  //  height: _statusWidth,
                  //  color: Colors.lightBlueAccent,
                  //),

                  SizedBox(height: 80,),
                  
                  Padding(
                    padding: EdgeInsets.only(top: 220.0, bottom: 120.0),
                    child : Column(
                      children: <Widget> [

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
                      ],
                    ),
                  ),

                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Button(
                        label: 'Já possui conta? Entre aqui',
                        route: ConstantRoutes.SigninPageRoute,
                        background: Colors.white, 
                        colorLabel: Colors.black
                      ),
                    ),
                  ),

                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Button(
                        label: 'Quero fazer parte',
                        route: ConstantRoutes.SignupPageRoute,
                        background: Colors.redAccent, 
                        colorLabel: Colors.white
                      ),
                    ),
                  ),
                
                ],
              )
            )
          ]
        )
      )
    );
  }
}