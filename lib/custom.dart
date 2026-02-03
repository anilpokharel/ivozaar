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
      body: Container(
        width: 200,
        child: Column(
          children: [
            Rounded(
              btnName: 'play',
              bgcolor: Colors.red,
              textStyle: TextStyle(fontSize: 19),
              icon: Icon(Icons.play_arrow),
              callback: () {
                print('Play Button');
              },
            ),
            Rounded(
              btnName: 'Login',
              bgcolor: Colors.blue,
              textStyle: TextStyle(fontSize: 19),
              icon: Icon(Icons.lock),
              callback: () {
                print('login Button');
              },
            ),
          ],
        ),
      ),
    );
  }
}
