import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment Widgets',
      home: Scaffold(
        appBar: AppBar(title: Text('Assignment Widgets')),
        body: Column(
          children: [
            Expanded(child: RowAndColumnWidget()),
            Divider(),
            Expanded(child: RowAndStackWidget()),
          ],
        ),
      ),
    );
  }
}

// Row and Column Widget
class RowAndColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 40, color: Colors.blue),
              Text('Star', style: TextStyle(fontSize: 16)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, size: 40, color: Colors.red),
              Text('Favorite', style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}

// Row and Stack Widget
class RowAndStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.orange,
              ),
              Icon(Icons.access_alarm, size: 40, color: Colors.white),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.purple,
              ),
              Icon(Icons.camera_alt, size: 40, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}