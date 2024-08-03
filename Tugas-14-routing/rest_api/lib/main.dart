import 'package:flutter/material.dart';
import 'package:rest_api/pages/user_page.dart';
import 'package:get/get.dart';
import 'package:rest_api/routes/pages_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: PagesRoute.routes,
      debugShowCheckedModeBanner: false,
      home: UserPage(),
    );
  }
}
