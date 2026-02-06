import 'package:flutter/material.dart';
import 'package:ivozaar/widgets/rounded_btn.dart';

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
      body:SizedBox(
        width: double.infinity,
        child: Wrap(
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
      ),
    );
  }
}
