import 'package:get/get.dart';
import 'package:rest_api/model/model.dart';
import 'package:rest_api/pages/user_details.dart';
import 'package:rest_api/routes/pages_named.dart';


class PagesRoute {
  static final routes = [
    GetPage(
      name: PagesNamed.details,
      page: () {
        final user = Get.arguments as User?;
        return UserDetailPage(user: user!);
      },
    ),
  ];
}

