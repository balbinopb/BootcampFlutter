import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navapp/pages/get_started.dart';
import 'package:navapp/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      home: GetStarted()
    );
  }
}

