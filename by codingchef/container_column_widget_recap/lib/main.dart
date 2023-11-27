import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          color: Colors.redAccent,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 20,
          ),
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
        ),
      ),
    );
  }
}
