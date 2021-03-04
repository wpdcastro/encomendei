import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductWidget({Key key, this.image, this.name, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Clicou");
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: new Text("Registrar Venda"),
                content: Row(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 50,
                      height: 40,
                      child: RaisedButton(
                        child: Icon(Icons.remove),
                        color: Colors.red,
                        elevation: 10.0,
                        splashColor: Colors.grey,
                        onPressed: () {
                          // faz alguma coisa
                        },
                      ),
                    ),
                    SizedBox(width: 5),
                    Flexible(
                      child: Container(
                        height: 44,
                        width: 80,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    ButtonTheme(
                      minWidth: 50,
                      height: 40,
                      child: RaisedButton(
                        child: Icon(Icons.add),
                        color: Colors.red,
                        elevation: 4.0,
                        splashColor: Colors.yellow,
                        onPressed: () {
                          // faz alguma coisa
                        },
                      ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  // define os botões na base do dialogo
                  FlatButton(
                    child: Text("Registrar Venda"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),

                  FlatButton(
                    child: Text("Fechar"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.amber,
        child: Column(
          children: <Widget>[
            Container(
              width: 158,
              height: 124,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            Center(
              child: Text(
                name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                price,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
