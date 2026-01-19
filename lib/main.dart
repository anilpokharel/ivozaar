import 'package:flutter/material.dart';
import 'buttons.dart';

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
        '/buttons': (context) => const Buttons(),
      }
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
          style: TextStyle(backgroundColor: Colors.blueGrey),
        ),
      ), //AppBar
      body: Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
            width: 150,
            height: 150,
            color: Colors.lime,
            child: Center(
              child: const Text(
                'Hello World!!',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Container(width: 150, height: 150, color: Colors.blue),
            ],)
          ),
          Center(
            child:TextButton(
            onPressed: () {
              print('Button Pressed');
              // Handle button press
            },
            child: const Text('Click me', style: TextStyle(fontSize: 13)),
          ),
          ),
          Container (
            width: 500,
            height: 50,
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [ElevatedButton(
                onPressed: () {
                  print('Elevated Button Pressed');
                },
            child: const Text('Elevated Button'),

            onLongPress: () {
              print('Elevated Button Long pressed');
            },
          ),
          OutlinedButton(
            onPressed: () {
              print('OutLine Button Pressed');
            },
            child: const Text('OutLine Button'),
          ),
          
          ],
          ),
          ),
          Center(
            child: Container(
            child: Column (
              children: [
                Image.asset('assets/Images/flutter.jpg', width: 200, height: 200),
              ],
            )
          ),
          ),
        ],
      ),
      ),
    );
  }
}
