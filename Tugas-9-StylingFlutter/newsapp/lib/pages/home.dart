import 'package:flutter/material.dart';
import 'package:newsapp/util/latest_news_card.dart';
import 'package:newsapp/util/news_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/icons/Menu_Icon.png'),
                  ),
                  const SizedBox(width: 59),
                  const Text(
                    'NewsApp',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Colors.black, 
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const NewsCard(),
              const SizedBox(height: 40),
              const LatestNewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}

