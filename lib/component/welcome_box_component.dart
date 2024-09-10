import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class WelcomeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 16.0, bottom: 18.0),
            height: 150,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), 
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.lightBlueAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 3.0],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Just Do It",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Be Better With Learn",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: -17.0,
          bottom: 10.0,
          child: Container(
            margin: EdgeInsets.all(16.0),
            height: 130,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                bottomLeft: Radius.circular(60.0),
              ),
              color: Colors.white,
            ),
          ),
        ),

        Positioned(
          bottom: 0,
          left: 15.0,
          child: Container(
            width: MediaQuery.of(context).size.width / 1.19,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(255, 222, 239, 247),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Use spaceAround for even distribution
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                  ),
                  child: Text('Pelajari'),
                ),
                Text(
                  DateFormat('dd MMMM yyyy').format(DateTime.now()),
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),


        Positioned(
          top: 8.0,
          right: 5.0,
          child: Image.asset('assets/imageHero1.png', 
          fit: BoxFit.cover, 
          width: 100, 
          height: 150
          ),
        ),
      ],
    );
  }
}

// 

