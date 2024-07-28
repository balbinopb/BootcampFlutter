import 'package:flutter/material.dart';

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 311,
      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Other',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
            ),
          ),

          //bug report
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
                        child: Image.asset('assets/icons/bug-outline.png'),
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
                        'Bug report',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Report bugs very easy',
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

          //share the app
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
                            'assets/icons/share-social-outline.png'),
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
                        'Share the app',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Share on social media networks',
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
