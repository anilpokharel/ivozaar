import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: no1Controller,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: no2Controller,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var sum = no1 + no2;

                      result = 'The sum of $no1 + $no2 is $sum';
                      setState(
                        () {},
                      ); // you can do above part in this function or above this function but cannot do after that function is called
                    },
                    child: const Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var sub = no1 - no2;

                        result = 'The Substraction of $no1 and $no2 is $sub';
                      });
                    },
                    child: Text('Sub'),
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var mult = no1 * no2;

                        result = 'The Multiplaction of $no1 and $no2 is $mult';
                      });
                  }, child: Text('Mult')),
                  ElevatedButton(onPressed: () {
                    setState(() {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var div = no1 / no2;

                        result = 'The Division of $no1 and $no2 is $div';
                      });
                  }, child: Text('Div')),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(21.0),
              child: Text(
                result,
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
