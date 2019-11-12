import 'package:flutter/material.dart';
import 'package:music_flutter/customs/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                child: CustomBottomNavigationBar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
