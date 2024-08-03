import 'package:flutter/material.dart';

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Latest News',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
            Icon(
              Icons.arrow_circle_right_outlined,
              size: 30,
              color: Colors.grey,
            ),
          ],
        ),        
        const SizedBox(height: 24),
        _buildNewsItem(
          imagePath: 'assets/images/pasarpolis.png',
          category: 'TECHNOLOGY',
          title: 'Insurtech startup PasarPolis gets \$54 million — Series B',
        ),
        const SizedBox(height: 24),
        _buildNewsItem(
          imagePath: 'assets/images/bumble.png',
          category: 'TECHNOLOGY',
          title: 'The IPO parade continues as Wish files, Bumble targets',
        ),
      ],
    );
  }

  Widget _buildNewsItem({
    required String imagePath,
    required String category,
    required String title,
  }) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: 100,
          width: 100,
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
