import 'dart:io';

void main() {
  List<int> dice =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int a = dice[0];
  int b = dice[1];
  int c = dice[2];

  if ((a == b) && (b == c))
    print('${10000 + a * 1000}');
  else if ((a == b) || (b == c))
    print('${1000 + b * 100}');
  else if (a == c)
    print('${1000 + a * 100}');
  else {
    int max = a;
    if (max < b) max = b;
    if (max < c) max = c;
    print('${max * 100}');
  }
}
