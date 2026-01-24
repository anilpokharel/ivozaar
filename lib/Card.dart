import 'package:flutter/material.dart';
import 'package:ivozaar/ui_helper/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontFamily: 'ZalandoSansExpanded'),
          bodyMedium: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)
        )
      ),
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
        title: const Text('(IVOzaar)'),
      ), //AppBar
      body: Column(
        children: [
          Card(
            elevation: 20,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4, left: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Images/flutter.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Anil Pokhrel", style: mtextStyle16(fontSize: 21, fontStyle: FontStyle.italic)),
                ),
              ],
            ),
            
          ),
          Card(
            elevation: 20,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4, left: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Images/flutter.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Priya Purja", style: mtextStyle16(fontSize: 21, fontStyle: FontStyle.italic)),
                ),
              ],
            ),
            
          ),
          Card(
            elevation: 20,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4, left: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Images/flutter.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Kushal Pokhrel", style: mtextStyle16(fontSize: 21, fontStyle: FontStyle.italic)),
                ),
              ],
            ),
            
          ),
          Card(
            elevation: 20,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4, left: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/Images/flutter.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Rekha Pokhrel", style: mtextStyle16(fontSize: 21, fontStyle: FontStyle.italic)),
                ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}
