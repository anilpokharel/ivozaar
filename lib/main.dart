import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ivozaar/IntroPage.dart';

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
          bodyLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Intropage(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('(IVOzaar)')), //AppBar
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height : 200,
              width: 200,
              color: Colors.green,
            ),
            Container(
              height : 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height : 200,
              width: 200,
              color: Colors.blue,
            ),
            Container(
              height : 200,
              width: 200,
              color: Colors.orange,
            ),
            Container(
              height : 200,
              width: 200,
              color: Colors.yellowAccent,
            ),
          ],
        ),
      )
    );
  }
}
