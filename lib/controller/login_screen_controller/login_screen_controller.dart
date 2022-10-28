import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:ksnc/view/screens/routs/routs.dart';
import 'package:ksnc/view/screens/ui/dashboard/dashboard_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

class LoginScreenController extends GetxController {
  RxBool obscureText = true.obs;

  String email = '';
  final passwordTextController = TextEditingController();

  void sessionLogIn() async {
    await preferences.setString('login',email);


    // print(await preferences.setString('login',email));
    // preferences.getString('login');

    // Get.toNamed(RoutsClass.getDashBoardRout());
  }
  // bool obscureText = true.obs;
  // changeObscureText() {
  //   obscureText = false as RxBool;

  //   update();
  //   print(obscureText);
  // }
}
