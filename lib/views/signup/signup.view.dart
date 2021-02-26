
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/controllers/signup.controller.dart';
import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/view-models/signup.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SignupView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>  _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  final _controller = new SignupController();
  var model = new SignupViewModel();

  @override
  Widget build(BuildContext context) {
    
    var store = Provider.of<Appstore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuário'),
      ),

      body: SingleChildScrollView( 
        child: Padding( 
          padding: EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                
                Text('Informações do Usuário'),
                RaisedButton(
                  child: Text('Gmail'),
                  onPressed: () {},
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration( 
                    labelText: 'Nome',
                    labelStyle: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                  validator: (String value) {
                    //return value.contains('@') ? 'Do not use the @ char.' : null;
                    if (value.isEmpty) { 
                      return 'Nome Inválido';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.name = val;
                  }
                ),
            
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration( 
                    labelText: 'E-mail',
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
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration( 
                    labelText: 'Telefone',
                    labelStyle: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                  validator: (String value) {

                    if (value.isEmpty) { 
                      return 'Senha Inválida';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.fone = val;
                  }
                ),
                
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration( 
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                  validator: (String value) {
;
                    if (value.trim().isEmpty) { 
                      return 'Senha Inválida';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.password = val;
                  }
                ),
                
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration( 
                    labelText: 'Repetir Senha',
                    labelStyle: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                  validator: (String value) {
                    if (value.isEmpty) { 
                      return 'Nome Inválido';
                    }
                    return null;
                  },
                  onSaved: (val) {}
                ),
                
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
                      child: const Text("Cadastrar", style: TextStyle(color : Colors.white),),
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