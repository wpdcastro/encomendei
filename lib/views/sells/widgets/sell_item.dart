import 'package:encomendei/constants/constantRoutes.dart';
import 'package:flutter/material.dart';

class SellItem extends StatelessWidget {
  final int index;
  final String image;
  final String client;
  final String date;
  final Color color = Colors.red;
  final Color box_color = Colors.black;
  final String route;

  const SellItem({Key key, this.index, this.client, this.image, this.date, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Stack(
          children: <Widget> [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, ConstantRoutes.SellInfoPageRoute);
              }, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                          Text(client, style: 
                            TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(client, style: 
                            TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      
                      Column( 
                        children: <Widget> [
                          Text(date, style: 
                            TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      
                      Column( 
                        children: <Widget> [
                          Icon(
                            Icons.add,
                            color: Colors.grey,
                            size: 36.0,
                          )
                        ],
                      ),

                    ],

                  )
                ],
              ),
            ),
          ],
        ), 
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}