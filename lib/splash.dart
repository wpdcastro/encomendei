import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/constantRoutes.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.pushNamed(context, ConstantRoutes.InitialPageRoute);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
            color: Colors.orangeAccent,
            child: Center(
              child: Container(
                width: 250,
                height: 250,
                child: Image(image: AssetImage('assets/images/encomendei_w.png')),
              ),
            )
        );
  }
}