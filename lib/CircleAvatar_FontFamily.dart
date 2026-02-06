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
  void callBack() {
    print("Clicked!!");
  }
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Arrcolors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.amberAccent,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.blueAccent,
      Colors.tealAccent,
    ];
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
          ElevatedButton(onPressed: callBack, child: Text('Click Me!')),
          Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            Container(
                height: 100,
                width: 100,
                color: Colors.grey,
              ),
            Container(
                height: 100,
                width: 100,
                color: Colors.cyanAccent,
              ),
            Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
              ),
            Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            
            ],
          ),
        ],
        
      ),
      
    );
  }
}
