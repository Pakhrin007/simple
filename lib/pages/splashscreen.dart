import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:simple/pages/homepage.dart';
import 'package:simple/urlluncher/urlluncher.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 300, // Set a width constraint for the Lottie animation
              height: 300, // Set a height constraint for the Lottie animation
              child: LottieBuilder.asset("assest/lottie/anime2.json"),
            ),
          ),
          const SizedBox(
              height: 20), // Add some space between the animation and text
          const Center(
            child: Text(
              "Loading...",
              style: TextStyle(
                  fontSize: 20, color: Colors.white), // Customize text style
            ),
          ),
        ],
      ),
      nextScreen: const Urlluncher(),
      splashIconSize: 400,
      backgroundColor: Colors.blueAccent,
    );
  }
}
