import 'dart:io';

void main() {
  int score = int.parse(stdin.readLineSync()!);
  if ((90 <= score) && (score <= 100))
    print("A");
  else if ((80 <= score) && (score <= 89))
    print("B");
  else if ((70 <= score) && (score <= 79))
    print("C");
  else if ((60 <= score) && (score <= 69))
    print("D");
  else
    print("F");
}
