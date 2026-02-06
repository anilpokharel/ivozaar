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
      body: RichText(text: TextSpan(
        style: TextStyle(fontSize: 16, color: Colors.grey),
        children: [
          TextSpan(text: "Hello", style: TextStyle(fontSize:20, color: Colors.blueGrey )),
          TextSpan(text: "World!", style: TextStyle(fontSize: 40, color: Colors.lightBlue,)),
        ],
      ))
      // Row(children: [
      //   Text("Hello", style: TextStyle(fontSize: 20, color: Colors.grey),),
      //   Text(" World!", style: TextStyle(fontSize: 30, color: Colors.lightBlue),)
      // ],)
    );
  }
}
