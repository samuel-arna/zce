import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  @observable
  String email = 'Usuário';
  @observable
  String password = 'Senha';
  @observable
  bool remember = false;

  @action
  changeEmail(String mail) {
    email = mail;
  }

  @action
  changePass(String pass) {
    password = pass;
  }

  @action
  toggleRemember() {
    remember = !remember;
  }
}
