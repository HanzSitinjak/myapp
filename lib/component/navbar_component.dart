import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavbarComponent extends StatelessWidget {
  const NavbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),  
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.lightBlue.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed:(){
                    //halaman navigasi
                  },
                  icon: const Icon(Icons.home, color: Colors.white),
                ),
                IconButton(
                  onPressed:(){
                    //halaman navigasi
                  },
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
                IconButton(
                  onPressed:(){
                    //halaman navigasi
                  },
                  icon: const Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}