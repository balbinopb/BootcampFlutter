import 'package:get/get.dart';
import 'package:navapp/pages/get_started.dart';
import 'package:navapp/pages/home.dart';
import 'package:navapp/pages/settings.dart'; 

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/get_started',
      page: () => GetStarted(),
    ),
    GetPage(
      name: '/home',
      page: () => Home(),
    ),
    GetPage(
      name: '/setting',
      page: () => const Settings(),
    ),
    
    
  ];
}
