import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome To the Flutter App(IVOzaar)',
        ),
      ), //AppBar
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
