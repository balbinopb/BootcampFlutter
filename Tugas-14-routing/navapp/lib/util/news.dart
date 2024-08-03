import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 311,
      width: 311,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage('assets/images/robot.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 16,
            left: 16,
            child: Text(
              'TECHNOLOGY',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const Positioned(
            top: 16,
            right: 16,
            child: Text(
              '3 min ago',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400
                //fontFamily: 'Poppins',
              ),
            ),
          ),
          const Positioned(
            bottom: 64,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Microsoft launches a',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'deepfake detector tool',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ahead of US election',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: Image.asset(
                    'assets/icons/chatbubble-ellipses-outline.png',
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Container(
                  child: const Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 180),
                Container(
                  height: 24,
                  width: 24,
                  child: Image.asset(
                    'assets/icons/arrow-redo-outline.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}