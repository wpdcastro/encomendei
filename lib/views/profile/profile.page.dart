
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/controllers/signin.controller.dart';
import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/view-models/profile.viewmodel.dart';
import 'package:encomendei/view-models/signin.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ProfileView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final _formKey = GlobalKey<FormState>();
  final _controller = new SigninController();
  var model = new ProfileViewModel();

  @override
  Widget build(BuildContext context) {

    var store = Provider.of<Appstore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://i.imgur.com/BoN9kdC.png")
                      )
                  ),
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    autofocus: false,
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
                        labelText: 'Endereço',
                        labelStyle: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )
                    ),
                    validator: (String value) {

                      if (value.trim().isEmpty) {
                        return 'Endereço Inválido';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      model.password = val;
                    }
                ),

                TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Cidade',
                        labelStyle: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )
                    ),
                    validator: (String value) {

                      if (value.trim().isEmpty) {
                        return 'Cidade Inválida';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      model.password = val;
                    }
                ),

                TextFormField(
                    keyboardType: TextInputType.text,
                    autofocus: false,
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
                    autofocus: false,
                    decoration: InputDecoration(
                        labelText: 'Telefone',
                        labelStyle: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )
                    ),
                    validator: (String value) {
                      //return value.contains('@') ? 'Do not use the @ char.' : null;
                      if (value.isEmpty) {
                        return 'Telefone Inválido';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      model.email = val;
                    }
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
                    child: const Text("Atualizar", style: TextStyle(color : Colors.white),),
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