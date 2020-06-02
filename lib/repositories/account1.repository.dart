import 'package:encomendei/model/user.model.dart';
import 'package:encomendei/view-models/profile.viewmodel.dart';
import 'package:encomendei/view-models/signin.viewmodel.dart';
import 'package:encomendei/view-models/signup.viewmodel.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignupViewModel model) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
      id: "0",
      name: 'William Castro',
      email: 'wpdcastro@gmail.com',
      image: 'https://picsum.photos/200/200',
      token: 'c3po',
    );
  }

  Future<UserModel> login(SigninViewModel model) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
      id: "0",
      name: 'William Castro',
      email: 'wpdcastro@gmail.com',
      image: 'https://picsum.photos/200/200',
      token: 'c3po',
    );
  }

  Future<UserModel> update(ProfileViewModel model) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return null;
  }
}