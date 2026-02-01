import 'package:flutter/material.dart';

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
      body: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.grey,
          ),
          Container(
            width: 160,
            height: 160,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
