import 'dart:io';
import 'dart:math';

void main() {
  String inputs = stdin.readLineSync()!;
  List<String> nums = inputs.split(' ');
  int a = int.parse(nums[0]);
  int b = int.parse(nums[1]);
  int c = int.parse(nums[2]);

  if (a == b && b == c) {
    print(10000 + a * 1000);
  } else if (a == b || b == c || c == a) {
    if (a == b)
      print(1000 + a * 100);
    else if (b == c)
      print(1000 + b * 100);
    else
      print(1000 + a * 100);
  } else {
    int big = max(a, b);
    big = max(big, c);
    print(big * 100);
  }
}
