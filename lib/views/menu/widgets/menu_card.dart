import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String name;
  final String label;
  final int index;
  final String route;

  const MenuCard({Key key, this.name, this.index, this.label, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 120,
      width: 200,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.40),
        borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            children: <Widget> [

              Center(
                child: Column(
                  children: <Widget> [
                    
                    SizedBox(height: 8),

                    Container(
                      height: 101, 
                      width: 101 , 
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[ 

                          SizedBox(width: 16),

                          Center(
                            child: Container(
                              height: 70, 
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.35),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80),
                                ),
                              ),
                              child: Icon(Icons.home, color: Colors.white),
                            ),
                          ),
                          
                        ],
                      )
                    ),
                  ],
                ),
              ),

              SizedBox(width: 50),

              Column(
                children: <Widget> [
                  
                  SizedBox(height: 50),

                  Container( 
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                  ),
                ],
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