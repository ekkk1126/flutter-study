import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < N ~/ 4; i++) {
    stdout.write("long ");
  }
  stdout.write("int");
}
