import 'package:flutter/material.dart';
import 'package:ivozaar/UserInput.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Intro Page')),
      body: Column(
        children: [
          const Center(child: Text('Welcome to the Intro Page')),
          SizedBox(height: 20, width: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  HomeScreen(),
                ),
              );
            },
            child: Text('DashBoard'),
          ),
        ],
      ),
    );
  }
}
