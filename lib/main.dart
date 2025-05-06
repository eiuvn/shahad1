import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refactor Rows and Stack',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Refactor Example'),
        ),
        body: Column(
          children: [
            buildRowExample1(),
            buildRowExample2(),
            buildStackExample(),
          ],
        ),
      ),
    );
  }

  // Row 1
  Widget buildRowExample1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.home, color: Colors.blue),
        Text('Home'),
        Icon(Icons.settings, color: Colors.grey),
        Text('Settings'),
      ],
    );
  }

  // Row 2
  Widget buildRowExample2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Login')),
        SizedBox(width: 10),
        ElevatedButton(onPressed: () {}, child: Text('Register')),
      ],
    );
  }

  // Stack example
  Widget buildStackExample() {
    return Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.all(20),
      color: Colors.grey[300],
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 60, width: 60, color: Colors.green),
          Container(height: 30, width: 30, color: Colors.blue),
        ],
      ),
    );
  }
}