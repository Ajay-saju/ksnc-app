
import 'package:get/get.dart';
import 'package:ksnc/view/screens/ui/forgot_password/forgot_password_screen.dart';
import 'package:ksnc/view/screens/ui/login_screen.dart';
import 'package:ksnc/view/screens/ui/sign_up/sign_up_screen.dart';

import '../ui/dashboard/dashboard_screen.dart';

class RoutsClass {
  static String login = "/";
  static String signUp="/signUp";
  static String forgottPassword="/forgottPassword";
  static String dashBoard="/dashBoard";

  static String getLoginRout() => login;
  static String getSignUpRout()=> signUp;
  static String getForgottPasswordRout() => forgottPassword;
  static String getDashBoardRout() => dashBoard;


  static List<GetPage> routs = [
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: signUp, page: () => const SignUpScreen()),
    GetPage(name:forgottPassword,page: () => const ForgotPasswordScreen(), ),
    GetPage(name:dashBoard, page: () =>const DashBoardScreen(),)
  ];
}
