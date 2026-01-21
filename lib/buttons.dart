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
    var arrNames = ["Alice", "Bob", "Charlie", "Danial", "Eve"];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome To the Flutter App(IVOzaar)',
          style: TextStyle(backgroundColor: Colors.blueGrey),
        ),
      ), //AppBar
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 11),
                    width: 150,
                    height: 300,
                    color: Colors.lime,
                    child: Center(
                      child: const Text(
                        'Hello World!!',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(margin: EdgeInsets.only(right: 11),width: 150, height: 300, color: Colors.blue, ),
                  Container(margin: EdgeInsets.only(right: 11),width: 150, height: 300, color: Colors.red, ),
                  Container(margin: EdgeInsets.only(right: 11),width: 150, height: 300, color: Colors.orange, ),
                  Container(margin: EdgeInsets.only(right: 11),width: 150, height: 300, color: Colors.green, ),
                  Container(margin: EdgeInsets.only(right: 11),width: 150, height: 300, color: Colors.blue, ),
                ],
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  print('Button Pressed');
                  // Handle button press
                },
                child: const Text('Click me', style: TextStyle(fontSize: 13)),
              ),
            ),
            Container(
              width: 500,
              height: 500,
              color: Colors.teal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
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
                child: Column(
                  children: [
                    Image.asset(
                      'assets/Images/flutter.jpg',
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueGrey,
              child: InkWell(
                onTap: () {
                  print('Container Tapped');
                },
                onLongPress:  () {
                  print('Container Long Pressed');
                },
                child: Center(
                  child: Text('Click Here!!',),),
              ),
            ),
            ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                arrNames[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              );
            },
            itemCount: arrNames.length,
            itemExtent: 100,
            scrollDirection: Axis.horizontal,
          ),
          ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                arrNames[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              );
            },
            itemCount: arrNames.length,
            separatorBuilder: (context, index) {
              return Divider(height: 40, thickness: 5);
            },
          ),
          Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(topRight: Radius.circular(21), bottomLeft: Radius.circular(21)),
              border: Border.all(
                width: 2,
                color: Colors.cyanAccent,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.blue,
                  spreadRadius: 12,
                  
                )
              ]
              ),
              child: Center(
                child: TextButton(
                  child: Text("Click Me", style: TextStyle(color: Colors.white)),

                  onPressed: () {
                    print("Button clicked");
                  },
              ),
          ),
        ),
      ),
      ),
          ],
        ),
      ),
    );
  }
}
