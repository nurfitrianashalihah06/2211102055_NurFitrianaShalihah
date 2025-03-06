import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Penerapan Stack Terbalik")),
        body: Center(
          child: SizedBox(
            width: 250,
            height: 250,
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(width: 100, height: 100, color: Colors.red),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(width: 90, height: 90, color: Colors.green),
                ),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Container(width: 80, height: 80, color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
