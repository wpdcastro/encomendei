
import 'package:encomendei/constants/constantRoutes.dart';
import 'package:encomendei/constants/constantSystem.dart';
import 'package:encomendei/controllers/profile.controller.dart';
import 'package:encomendei/model/profile.model.dart';
import 'package:encomendei/stores/app.store.dart';
import 'package:encomendei/view-models/profile.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  //final _controller = new ProfileController();
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
              children: <Widget> [

                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(store.image)
                      )
                  ),
                ),

                SizedBox(height: 40,),
                
                Container(
                  height: 360,
                  
                  child: Column(
                    children: <Widget> [
                      Text('Nome: ' + store.name),
                      SizedBox(height: 30,),
                      Text('E-mail:' + store.email),
                    ],
                  ),
                ),
              
                Container(
                  height: 60,
                  width:  MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color : Colors.redAccent),
                  child: FlatButton(
                    
                    child: const Text("Atualizar", style: TextStyle(color : Colors.white),),
                    onPressed: () {},
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
