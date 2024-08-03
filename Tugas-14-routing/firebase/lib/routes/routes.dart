import 'package:firebase/login.dart';
import 'package:firebase/sign_up.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/signuppage', page: () => const SignupPage()),
    GetPage(name: '/loginpage', page: () => const LoginPage()),
  ];
}
