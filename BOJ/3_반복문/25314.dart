import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int x = n - 4;
  int y = x ~/ 4;
  print('long ' * y + 'long int');
}
