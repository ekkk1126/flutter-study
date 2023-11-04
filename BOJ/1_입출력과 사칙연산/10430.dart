import 'dart:io';

void main() {
  String? inputs = stdin.readLineSync();
  if (inputs != null) {
    List<String> nums = inputs.split(' ');
    int a = int.parse(nums[0]);
    int b = int.parse(nums[1]);
    int c = int.parse(nums[2]);
    print((a + b) % c);
    print(((a % c) + (b % c)) % c);
    print((a * b) % c);
    print(((a % c) * (b % c)) % c);
  }
}
