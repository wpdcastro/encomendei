import 'package:encomendei/model/user.model.dart';
import 'package:encomendei/repositories/account.repository.dart';
import 'package:encomendei/view-models/profile.viewmodel.dart';

class ProfileController {
  AccountRepository repository;

  ProfileController() {
    repository = new AccountRepository();
  }

  Future<UserModel> update(ProfileViewModel model) async {
    model.busy = true;
    var profile = await repository.update(model);
    model.busy = false;
    return profile;
  }
}