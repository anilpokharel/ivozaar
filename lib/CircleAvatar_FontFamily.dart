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
      routes: {'/home': (context) => const HomeScreen()},
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To the Flutter App(IVOzaar)'),
      ), //AppBar
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/Images/flutter.jpg'),
              child: Text('Anil pokhrel', style: TextStyle(fontFamily: 'ZalandoSansExpanded'),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/Images/flutter.jpg'),
            ),
          ),
        ],
        
      ),
      
    );
  }
}
