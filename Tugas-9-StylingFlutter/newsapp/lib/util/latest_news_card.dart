import 'package:flutter/material.dart';

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest News',
                style: TextStyle(
                    fontSize: 18,
                    //fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
              Icon(
                Icons.arrow_circle_right_outlined,
                size:30 ,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/pasarpolis.png'),
              ),
              SizedBox(width: 24,),

              Container(
                height: 100,
                width: 187,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('TECHNOLOGY',
                  
                      style: TextStyle(
                        color: Colors.grey[500],
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900                      
                        ),),
                    ),
                    SizedBox(height: 2,),
                    Container(
                      child: Text(
                        'Insurtech startup PasarPolis gets \$54 million — Series B',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900                      
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/bumble.png'),
              ),
              SizedBox(width: 24,),

              Container(
                height: 100,
                width: 195,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('TECHNOLOGY',
                  
                      style: TextStyle(
                        color: Colors.grey[500],
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900                      
                        ),),
                    ),
                    SizedBox(height: 2,),
                    Container(
                      child: Text(
                        'The IPO parade continues as Wish files,Bumble targets',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900                      
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          
        ],
      ),
    );
  }
}

 