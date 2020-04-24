import 'package:encomendei/model/user.model.dart';
import 'package:encomendei/repositories/account.repository.dart';
import 'package:encomendei/view-models/signin.viewmodel.dart';

class SigninController { 
  AccountRepository repository;

  SigninController() {
    repository = new AccountRepository();
  }

  Future<UserModel> create(SigninViewModel model) async {
    model.busy = true;
    var user = await repository.login(model);
    model.busy = false;
    return user;
  }
}