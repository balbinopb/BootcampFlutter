import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //images
            Container(
              width: double.infinity,
              height: 375,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bg.png',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(
                      35.0), // Optional padding for better positioning
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white, // Add color to make the icon visible
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),

            //person
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('assets/icons/Avatar.png'),
                      ),
                      SizedBox(width: 16),
                      Text(
                        'Samuel Newtor',
                        style: TextStyle(
                          fontSize: 14,
                          //fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 38),
                  Container(
                    padding: EdgeInsets.all(
                        8.0), // Optional padding for better spacing
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TECHNOLOGY',
                          
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                            height: 9), // Optional spacing between the texts
                        Text(
                          'To build responsibly, tech needs to do more than just hire chief ethics officers',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 40,),
                        Divider(),              
                        Text(
                          'In the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digital well-being, AI ethics or humane use. Whatever their titles, these individuals are given the task of “leading” ethics at their companies.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
