import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; 

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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DateTime time;

  @override
  void initState() {
    super.initState();
    time = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('(IVOzaar)')), //AppBar
      body: Container(
        width: double.infinity,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Time: ${DateFormat('Hms').format(time)}',
              style: TextStyle(fontSize: 19),
            ),
            Text(
              'Current Time: ${DateFormat('jms').format(time)}',
              style: TextStyle(fontSize: 19),
            ),
            Text(
              'Current Time: ${DateFormat('yMMMMd').format(time)}',
              style: TextStyle(fontSize: 19),
            ),
            Text(
              'Current Time: ${DateFormat('QQQ').format(time)}',
              style: TextStyle(fontSize: 19),
            ),
            Text(
              'Current Time: ${DateFormat('yMMMMEEEEd').format(time)}',
              style: TextStyle(fontSize: 19),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  time = DateTime.now();
                });
              },
              child: Text('Current Time'),
            ),
          ],
        ),
      ),
    );
  }
}
