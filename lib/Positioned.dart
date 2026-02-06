import 'package:flutter/material.dart';
import 'package:ivozaar/widgets/rounded_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: const HomeScreen(),
      initialRoute: '/home',
      routes: {'/home': (context) => const HomeScreen()},
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('(IVOzaar)')), //AppBar
      body: Container(
        color: Colors.green,
        child: Stack(
          children: [
            Positioned(
              bottom: 12,
              right: 12,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                height: 250,
                width: 250,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 12,
              left: 12,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              bottom: 12,
              left: 12,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
