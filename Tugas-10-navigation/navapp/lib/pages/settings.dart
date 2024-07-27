import 'package:flutter/material.dart';
import 'get_started.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetStarted(),
                  ),
                );
          },
          child: Text(
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
