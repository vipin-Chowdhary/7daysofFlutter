// lib/controllers/user_controller.dart
import 'package:get/get.dart';
import '../models/login_model.dart';

class UserController extends GetxController {
  var loginModel = LoginModel().obs;

  void setLoginData(String name, String password) {
    loginModel.update((val) {
      val?.name = name;
      val?.password = password;
    });
  }

  void clearData() {
    loginModel.value = LoginModel();
  }
}
