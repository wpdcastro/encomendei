
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/controllers/signin.controller.dart';
import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/view-models/signin.viewmodel.dart';
import 'package:encomendei/views/tutorials/signin.tutorial.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SigninView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>  _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final _formKey = GlobalKey<FormState>();
  final _controller = new SigninController();
  var model = new SigninViewModel();

  @override
  Widget build(BuildContext context) {
    
    var store = Provider.of<Appstore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),

      body: SingleChildScrollView( 
        child: Padding( 
          padding: EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget> [
            
                TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration( 
                    labelText: 'E-mail',
                    icon: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                  validator: (String value) {
                    //return value.contains('@') ? 'Do not use the @ char.' : null;
                    if (value.isEmpty) { 
                      return 'E-mail Inválido';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.email = val;
                  }
                ),
                
                TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration( 
                    labelText: 'Senha',
                    icon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                  validator: (String value) {
                    
                    if (value.trim().isEmpty) { 
                      return 'Senha Inválida';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.password = val;
                  }
                ),
                SizedBox(height: 10,),
                Align(alignment: Alignment.centerRight, child: new Text("Esqueci minha senha")),
               
            
                SizedBox(height: 60),

                model.busy ?

                  Center(
                    child: Container(
                      child: CircularProgressIndicator(backgroundColor: Colors.redAccent,),
                    ),
                  )
                :
                  Container( 
                    decoration: BoxDecoration(color : Colors.redAccent),
                    child: FlatButton(
                      child: const Text("Entrar", style: TextStyle(color : Colors.white),),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
          
                          setState(() {}); 
                          
                          _controller.create(model).then((data) {
                              setState(() {});
                              store.SetUser(data.name, data.email, data.image, data.token);
                              Navigator.pushNamed(context, ConstantRoutes.MenuPageRoute);
                          });
                        }  
                      },
                    ),
                  ) ,

                  SizedBox(height: 20,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget> [
                        Container(
                          height: 1, 
                          color: Colors.grey, 
                          width: 100
                        ),

                        Text("OU"),

                        Container(
                          height: 1, 
                          color: Colors.grey, 
                          width: 100
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container( 
                    decoration: BoxDecoration(color : Colors.redAccent),
                    child: FlatButton(
                      child: const Text("Entrar com Gmail", style: TextStyle(color : Colors.white),),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
          
                          setState(() {}); 
                          
                          _controller.create(model).then((data) {
                              setState(() {});
                              store.SetUser(data.name, data.email, data.image, data.token);
                              Navigator.pushNamed(context, ConstantRoutes.MenuPageRoute);
                          });
                        }  
                      },
                    ),
                  ) ,
              ],
            ),
          ),
        ),
      ),
    );
  }
}