import 'package:flutter/material.dart';

class TourItemWidget extends StatelessWidget {
  
  final String textContent;

  const TourItemWidget({Key key, this.textContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(textContent),
    );
  }
}