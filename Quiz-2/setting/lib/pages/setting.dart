import 'package:flutter/material.dart';
import 'package:setting/util/icon_menu_search.dart';
import 'package:setting/util/others.dart';
import 'package:setting/util/setting_container.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
          child: Column(
            children: [
              IconMenuSearch(),
              SizedBox(
                height: 32,
              ),
              SettingContainer(),
              SizedBox(
                height: 32,
              ),
              Others()
            ],
          ),
        ),
      ),
    );
  }
}
