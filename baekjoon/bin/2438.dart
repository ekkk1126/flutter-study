import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < N; i++) print('*' * (i + 1));
}
