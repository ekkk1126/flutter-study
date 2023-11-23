// import 'dart:html';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        title: Text('Scanffold Messenger - Main'),
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Like ad new Snack bar!'),
              duration: Duration(seconds: 5),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('Go to the Second Page'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            child: Text('MyButton'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyButton()),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              showToast();
            },
            child: Text('Toast'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
          ' 2. 좋아요!',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '3. 좋아요를 취소하시겠습니까?',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.redAccent,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '좋아요가 취소되었습니다.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.teal,
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: Text('취소'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyButton'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('text button');
              },
              child: Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              style: TextButton.styleFrom(
                  primary: Colors.yellow, backgroundColor: Colors.redAccent),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated BTN');
              },
              child: Text('Elavated BTN'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0.0,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined BTN');
              },
              child: Text('Outline BTN'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.blue,
                  side: BorderSide(
                    color: Colors.black87,
                    width: 2.0,
                  )),
            ),
            TextButton.icon(
              onPressed: () {
                print('Icon BTN');
              },
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.black87,
              ),
              label: Text('Go Home'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
                backgroundColor: Colors.yellowAccent,
                minimumSize: Size(200, 50),
              ),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.black87,
              ),
              label: Text('Go Home -NULL'),
              style: TextButton.styleFrom(
                  primary: Colors.black, onSurface: Colors.pink),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('TextButtonBar'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated-BTNBar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(
    msg: 'This is Toast!!',
    gravity: ToastGravity.BOTTOM,
    toastLength: Toast.LENGTH_SHORT,
  );
}
