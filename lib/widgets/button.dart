import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final String route;
  final Color background;
  final Color colorLabel;

  const Button({Key key, this.label, this.route, this.background, this.colorLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      width: 280,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            child: Row(
              children: <Widget> [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: colorLabel,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            onPressed: () {   
              Navigator.pushNamed(context, route);  
            },
          ),
        ),
      );
    
  }
}