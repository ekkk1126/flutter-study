import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toast',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                onLongPress: () {
                  print('Long Press');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.yellow,
                ),
                child: const Text(
                  'Text button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 0.0),
                child: const Text('Elevate button'),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: const BorderSide(
                    color: Colors.black87,
                    width: 2.0,
                  ),
                ),
                child: const Text('Outilined button'),
              ),
              TextButton.icon(
                onPressed: null,
                icon: const Icon(
                  Icons.home,
                  size: 30.0,
                  color: Colors.black87,
                ),
                label: const Text(
                  'go to home',
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.purple,
                  minimumSize: const Size(200, 50),
                  disabledForegroundColor: Colors.pink.withOpacity(0.38),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                buttonPadding: const EdgeInsets.all(20),
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Text Button'),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Elevated Button',
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
