import 'package:flutter/material.dart';
import 'package:navigator/ScreenA.dart';
import 'package:navigator/ScreenB.dart';
import 'package:navigator/ScrennC.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}
