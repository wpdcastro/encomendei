import 'package:mobx/mobx.dart';

part 'app.store.g.dart';

class Appstore = _AppStore with _$Appstore;

abstract class _AppStore with Store {
  
  @observable
  String name = "";

  @observable
  String email = "";

  @observable
  String image = "https://placehold.it/200";

  @observable
  String token = "";

  @action 
  void SetUser(String pName, String pEmail, String pImage,String pToken) {
    name = pName;
    email = pEmail;
    image = pImage;
    token = pToken;
  }
}