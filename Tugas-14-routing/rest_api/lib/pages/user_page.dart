import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/model/model.dart';
import 'package:rest_api/routes/pages_named.dart';
import 'package:rest_api/services/services.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late Future<List<User>> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = ApiService().fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: futureUsers,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData) {
              return Text('No users found');
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  User user = snapshot.data![index];
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
                      Get.toNamed(
                        PagesNamed.details,
                        arguments: user,
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
