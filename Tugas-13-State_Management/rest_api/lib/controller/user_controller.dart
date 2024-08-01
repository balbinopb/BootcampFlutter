import 'package:get/get.dart';
import 'package:rest_api/model/model.dart';
import 'package:rest_api/services/services.dart';

class UserController extends GetxController {
  var users = <User>[].obs;
  var isLoading = true.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var fetchedUsers = await ApiService().fetchUsers();
      users.assignAll(fetchedUsers);
    } catch (e) {
      errorMessage(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
