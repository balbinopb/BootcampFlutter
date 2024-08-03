import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navapp/routes/app_named.dart';
import 'package:navapp/util/latest_news.dart';
import 'package:navapp/util/news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _itemsIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Settings Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 32),
              _buildHorizontalNewsList(),
              const SizedBox(height: 40),
              const LatestNewsCard(),
              Expanded(child: _pages[_itemsIndex]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        animationDuration: Duration(milliseconds: 400),
        index: _itemsIndex,
        items: [
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.settings),
        ],
        onTap: (index) {
          setState(() {
            _itemsIndex = index;
            if (_itemsIndex == 2) {
              Get.toNamed(AppNamed.setting);
            }
          });
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          child: Image.asset('assets/icons/Menu_Icon.png'),
        ),
        SizedBox(width: 100),
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
    );
  }

  Widget _buildHorizontalNewsList() {
    return Container(
      height: 311,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          NewsCard(),
          SizedBox(width: 40),
          NewsCard(),
        ],
      ),
    );
  }
}
