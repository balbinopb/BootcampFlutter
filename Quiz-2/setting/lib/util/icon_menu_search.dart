import 'package:flutter/material.dart';

class IconMenuSearch extends StatelessWidget {
  const IconMenuSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        width: 311,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                child: Image.asset(
                  'assets/icons/menu_icon.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Image.asset(
                  'assets/icons/search_icon.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
