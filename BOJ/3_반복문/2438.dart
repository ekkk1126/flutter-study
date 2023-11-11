import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= t; i++) {
    print('*' * i);
  }
}
