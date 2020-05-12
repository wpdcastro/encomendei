import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String name;
  final String label;
  final int index;
  final Widget icon;
  final String route;

  const MenuCard({Key key, this.name, this.index, this.label, this.icon, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Stack(
          children: <Widget> [
            Column(
              children: <Widget> [
                Container(
                  height: 90,
                  width: 130,
                  child: FlatButton(
                    child: icon,
                    onPressed: () {
                      Navigator.pushNamed(context, route);
                    },
                  ),
                ),

                Text(name, style: 
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ],
        ), 
        decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
         ),
      ),
    );
  }
}