import 'package:flutter/material.dart';

class SettingContainer extends StatelessWidget {
  const SettingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 354,
      width: 311,
      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Settings',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
            ),
          ),

          //profile settings
          Container(
            height: 56,
            child: Row(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      color: Colors.grey[400],
                      height: 56,
                      width: 56,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/icons/person-outline.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 56,
                  width: 194,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile settings',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Settings regarding your profile',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.grey[400],
                  size: 25,
                )
              ],
            ),
          ),

          //news settings
          Container(
            height: 56,
            child: Row(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      color: Colors.grey[400],
                      height: 56,
                      width: 56,
                      child: Container(
                        height: 20,
                        width: 20,
                        child:
                            Image.asset('assets/icons/newspaper-outline.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 56,
                  width: 194,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'News settings',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Choose your favourite topics',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.grey[400],
                  size: 25,
                )
              ],
            ),
          ),

          //notifications
          Container(
            height: 56,
            child: Row(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      color: Colors.grey[400],
                      height: 56,
                      width: 56,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                            'assets/icons/notifications-outline.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 56,
                  width: 194,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'When would you like to be notified',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.grey[400],
                  size: 25,
                )
              ],
            ),
          ),

          //subscriptions
          Container(
            height: 56,
            child: Row(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      color: Colors.grey[400],
                      height: 56,
                      width: 56,
                      child: Container(
                        height: 20,
                        width: 20,
                        child:
                            Image.asset('assets/icons/folder-open-outline.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 56,
                  width: 194,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subscriptions',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Currently, you are in Starter Plan',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.grey[400],
                  size: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
