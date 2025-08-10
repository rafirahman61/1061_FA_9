import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column and Row Layout')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildBox('1', Colors.red),
                buildBox('2', Colors.green),
                buildBox('3', Colors.blue),
              ],
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.orange,
              width: 300,
              height: 150,
              child: Center(
                child: Text(
                  'Large Container',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildBox('Left', Colors.purple, width: 150),
                buildBox('Right', Colors.teal, width: 150),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBox(
    String text,
    Color color, {
    double width = 60,
    double height = 60,
  }) {
    return Container(
      color: color,
      width: width,
      height: height,
      child: Center(
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
    );
  }
}
