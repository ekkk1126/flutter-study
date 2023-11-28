import 'package:flutter/material.dart';
import 'package:navigator/main.dart';

void main() => runApp(ScreenB());

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenB'),
      ),
      body: Center(
        child: Text(
          'ScreenB',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
