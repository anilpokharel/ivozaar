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
          Text('Hello Flutter', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.red)),
          Text('Hello Flutter', style: Theme.of(context).textTheme.bodyMedium),
          Text('Hello Flutter', style: mtextStyle16(fontSize: 20)),
        ],
      ),
    );
  }
}
