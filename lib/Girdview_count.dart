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
      body: Column(
        children: [
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          )
          // GridView.builder(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 100,
      //   ),
      //   itemBuilder: (context, index) {
      //     return Container(color: Color(index));
      //   },
      //   itemCount: Arrcolors.length,
      // ),

      // // GridView.extent(
      // //   crossAxisSpacing: 19,
      // //   mainAxisSpacing: 19,
      // //   maxCrossAxisExtent: 100,
      // //   // shrinkWrap: true,
      // //   // physics: const NeverScrollableScrollPhysics(),
      // //   children: [
      // //     Container(color: Colors.blue),
      // //     Container(color: Colors.red),
      // //     Container(color: Colors.green),
      // //     Container(color: Colors.amberAccent),
      // //     Container(color: Colors.cyanAccent),
      // //     Container(color: Colors.yellow),
      // //     Container(color: Colors.purple),
      // //     Container(color: Colors.pink),
      // //     Container(color: Colors.redAccent),
      // //   ],
      // // ),
        ],
      ),
    );
  }
}
