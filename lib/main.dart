import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To the Flutter App(IVOzaar)', style: TextStyle(
          backgroundColor: Colors.blueGrey
        )),
      ), //AppBar
      body: Column(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.lime,
          child: Center(
            child: const Text(
              'Hello World!!', style: TextStyle(
                fontSize: 20, color: Colors.red,
                
                ),
            ),
          ),
        ),
        Container(
          width:150,
          height: 150,
          color: Colors.red,
        ),
      ],
      ),
    );
  }
}
