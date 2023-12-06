import 'package:basic2/mild2_1.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the first page',
            image: Image.asset('image/page1.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the second page',
            image: Image.asset('image/page2.png'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the third page',
            image: Image.asset('image/page3.png'),
            decoration: getPageDecoration()),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const MyPage(),
        ));
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          )),
      curve: Curves.bounceOut,
    );
  }
}

PageDecoration getPageDecoration() {
  return PageDecoration(
    titleTextStyle: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    bodyTextStyle: const TextStyle(
      fontSize: 18,
      color: Colors.white,
    ),
    imagePadding: const EdgeInsets.only(top: 40),
    pageColor: Colors.orange[300],
  );
}
