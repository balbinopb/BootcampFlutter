import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/model/model.dart';
import 'package:rest_api/controller/user_controller.dart';
import 'user_details.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          if (userController.isLoading.value) {
            return CircularProgressIndicator();
          } else if (userController.errorMessage.isNotEmpty) {
            return Text('Error: ${userController.errorMessage.value}');
          } else if (userController.users.isEmpty) {
            return Text('No users found');
          } else {
            return ListView.builder(
              itemCount: userController.users.length,
              itemBuilder: (context, index) {
                User user = userController.users[index];
                return ListTile(
                  leading: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(user.avatar),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  onTap: () {
                    Get.to(() => UserDetailPage(user: user));
                  },
                );
              },
            );
          }
        }),
      ),
    );
  }
}
