import 'package:encomendei/constants/constantSystem.dart';
import 'package:flutter/material.dart';

class Publish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _pageWidth = MediaQuery.of(context).size.width;
    
    return Column(
      children: <Widget> [
          
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            Container(
              color: ConstantSystem.SystemColor,
              height: 60, 
              width: _pageWidth / 2,
              child: Center( 
                child: Text('Valor Total',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.redAccent[400],
              margin: const EdgeInsets.only(bottom: 0.0),
              height: 60, 
              width: _pageWidth / 2,
              child: Center( 
                child: Text("RS 150,00",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}