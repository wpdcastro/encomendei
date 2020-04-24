

import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String route;
  final String description;
  final double price;

  const ProductWidget({Key key, this.image, this.description, this.price, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
              Column( 
                children: <Widget> [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(image)
                      )
                    ),
                  ),
                ],
              ),

              Column( 
                children: <Widget> [
                  Text('Nome :' + description),
                  Text('Preco:' + price.toString()),
                ],
              ),
            ]
          )
        ],
      ),
    );
  }
}