import 'package:basic2/animal_page.dart';
import 'package:flutter/material.dart';

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  static List<String> animalName = [
    'Bear',
    'Camel',
    'Deer',
    'Fox',
    'Kangaroo',
    'Koala',
    'Lion',
    'Tiger',
  ];

  static List<String> animalImgPath = [
    'image/bear.png',
    'image/camel.png',
    'image/deer.png',
    'image/fox.png',
    'image/kangaroo.png',
    'image/koala.png',
    'image/lion.png',
    'image/tiger.png',
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Austrailia',
    'Austrailia',
    'Africa',
    'Korea',
  ];

  final List<Animal> animalData = List.generate(
      animalLocation.length,
      (index) => Animal(
            animalName[index],
            animalImgPath[index],
            animalLocation[index],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: animalData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(animalData[index].name),
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(animalData[index].imgPath),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnimalPage(
                    animal: animalData[index],
                  ),
                ));
                debugPrint(animalData[index].name);
              },
            ),
          );
        },
      ),
    );
  }
}
