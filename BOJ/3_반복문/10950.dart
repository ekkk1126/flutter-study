import 'dart:io';

void main() {
  int T = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < T; i++) {
    String inputs = stdin.readLineSync()!;
    List<String> nums = inputs.split(' ');
    int a = int.parse(nums[0]);
    int b = int.parse(nums[1]);
    print(a + b);
  }
}
