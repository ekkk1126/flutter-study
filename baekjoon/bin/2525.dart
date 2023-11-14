import 'dart:io';

void main() {
  List<int> time =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int A = time[0];
  int B = time[1];
  int C = int.parse(stdin.readLineSync()!);

  int min = B + C;
  B = min % 60;
  A += min ~/ 60;
  if (A > 23) A = 24 - A;
  print('$A $B');
}
