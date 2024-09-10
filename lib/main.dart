import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main() {
  runApp(ProjectAppFlutter());
}

class ProjectAppFlutter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: Splashscreen()
    );
  }
}