import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navapp/routes/app_named.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => GetStarted(),
            //       ),
            //     );
            Get.offAllNamed(AppNamed.getstarted);
          },
          child: const Text(
            'Log out',
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
}
