import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= t; i++) {
    String inputs = stdin.readLineSync()!;
    List<String> nums = inputs.split(' ');
    int a = int.parse(nums[0]);
    int b = int.parse(nums[1]);
    print('Case #$i: ${a + b}');
  }
}
