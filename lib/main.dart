import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first Flutter app Lutai Yevhenii TI-71'),
        ),
        body:
        Center(
          child: Container(
            color: Colors.blueGrey,
            child: Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.3)..rotateZ(-3.14 / 12.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                color: const Color(0xFFE8581C),
                child: const Text('Hello, I am Lutai Yevhenii TI-71'),
              ),
            ),
          )
        ),
      ),
    );
  }
}
