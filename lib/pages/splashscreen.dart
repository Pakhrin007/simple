import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple/pages/homepage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset("assest/lottie/anime.json"),
          )
        ],
      ),
      nextScreen: const Homepage(),
      splashIconSize: 400,
      backgroundColor: Colors.blueAccent,
    );
  }
}
