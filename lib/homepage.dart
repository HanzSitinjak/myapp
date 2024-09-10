import 'component/navbar_component.dart';
import 'package:flutter/material.dart';
import 'component/welcome_box_component.dart';
import 'component/slider_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          ListView( 
            padding: EdgeInsets.only(
              top: 16.0,
              left: 16.0,
              right: 16.0,
              bottom: 80.0,
            ),
            children: [
              SizedBox(height: 60), // Space for the top container
              WelcomeBox(),
              SizedBox(height: 30), // Space for the top container
              Text("Layanan yang kami sediakan",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
              ),
              SizedBox(height: 10),
              SliderComponent(label: ""),
              SizedBox(height: 60), // Space for the top container
              WelcomeBox(),
              SizedBox(height: 60), // Space for the top container
              WelcomeBox(),
            ],
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              height: 80,
              child: Image.asset(
                'assets/flutter_logo2.png',
                fit: BoxFit.cover,
                width: 140,
                height: 30,
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: NavbarComponent(),
          ),
        ],
      ),
    );
  }
}
