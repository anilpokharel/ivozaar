import 'package:flutter/material.dart';
import 'package:ivozaar/IntroPage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Intropage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('This is the Splash Screen')),
    );
  }
}
