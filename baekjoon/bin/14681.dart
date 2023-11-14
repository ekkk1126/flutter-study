import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  if ((x < -1000) || (1000 < x) || (x == 0))
    return print("(−1000 ≤ x ≤ 1000; x ≠ 0)");

  int y = int.parse(stdin.readLineSync()!);
  if ((y < -1000) || (1000 < y) || (y == 0))
    return print("(−1000 ≤ x ≤ 1000; x ≠ 0)");

  if ((x > 0) && (y > 0))
    print(1);
  else if ((x < 0) && (y > 0))
    print(2);
  else if ((x < 0) && (y < 0))
    print(3);
  else
    print(4);
}
