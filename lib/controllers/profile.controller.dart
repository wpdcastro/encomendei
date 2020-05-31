import 'package:encomendei/model/profile.model.dart';
import 'package:encomendei/repositories/account.repository.dart';
import 'package:encomendei/view-models/profile.viewmodel.dart';

class ProfileController {
  AccountRepository repository;

  ProfileController() {
    repository = new AccountRepository();
  }

  Future<ProfileModel> update(ProfileViewModel model) async {
    model.busy = true;
    var profile = await repository.update(model);
    model.busy = false;
    return profile;
  }
}