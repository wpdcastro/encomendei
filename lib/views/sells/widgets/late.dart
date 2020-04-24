import 'package:encomendei/views/sells/widgets/sell_item.dart';
import 'package:flutter/material.dart';

class Late extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[

            SellItem( 
              date: '12/04/2020', 
              client: 'Edward Northon',
              image: "https://i.imgur.com/BoN9kdC.png",
            ),

            SellItem( 
              date: '12/04/2020', 
              client: 'Tommy',
              image: "https://i.imgur.com/BoN9kdC.png"
            )
          ],
        ),
      ),
    );
  }
}