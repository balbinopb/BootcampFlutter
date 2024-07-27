import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './home.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Padding for the top image container
          Padding(
            padding: const EdgeInsets.only(top: 135.0, left: 31.0, right: 31.0),
            child: Container(
              height: 330.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/news.png',
                  ),
                  fit: BoxFit.cover, // To cover the entire container
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          SizedBox(
            height: 37.0, // Spacing between text elements
          ),
          // Title text with custom font
          Text(
            'Yuk, Membaca Bersama\n Sanber News',
            style: GoogleFonts.arimo(
              fontSize: 21.0,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 21.0, // Spacing between text elements
          ),
          // Subtitle text with default styling
          Text(
            'Berita Terpercaya, Di Ujung Jari Anda',
            style: TextStyle(color: Colors.black),
          ),
          Spacer(), // Pushes the buttons to the bottom
          // ElevatedButton for 'Masuk'
          SizedBox(
            height: 52.0,
            width: 354.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              }, // Placeholder for button press action
              child: Text(
                'Masuk',
                style: GoogleFonts.arimo(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 21.0, // Spacing between buttons
          ),
          // ElevatedButton for 'Mendaftar'
          SizedBox(
            height: 52.0,
            width: 354.0,
            child: ElevatedButton(
              onPressed: () {}, // Placeholder for button press action
              child: Text(
                'Mendaftar',
                style: GoogleFonts.arimo(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                    color: Colors.blue), // Outline color of the button
                backgroundColor: Colors.white, // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0, // Bottom spacing
          ),
        ],
      ),
    );
  }
}
