import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String image;
  final String name;
  final Color color;

  const CategoryWidget({Key key, this.image, this.name, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 100, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
          image: new NetworkImage(image),
        ), 
      ),
      child: Center(
        child: Text(
          name, 
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}