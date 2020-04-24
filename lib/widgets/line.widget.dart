import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _pageWidth = MediaQuery.of(context).size.width;
    
    return Container(
      child :Padding(
        padding:EdgeInsets.symmetric(horizontal:10.0),
        child: Container(
          height:1.0,
          width: _pageWidth,
          color:Colors.black,
        ),
      ),
    );
  }
}