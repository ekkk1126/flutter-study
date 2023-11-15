import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= N; i++) {
    stdout.write(' ' * (N - i));
    stdout.writeln('*' * i);
  }
}
