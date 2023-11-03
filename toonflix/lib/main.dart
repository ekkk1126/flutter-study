import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // google UI, cupetino: apple UI
      home: Scaffold(
        appBar: AppBar(
          elevation: 0, // 그림자
          title: Text('Hello flutter!'),
          centerTitle: false, // text center 배치
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
