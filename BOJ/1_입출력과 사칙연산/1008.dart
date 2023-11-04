import 'dart:io';

void main() {
  String? inputs = stdin.readLineSync();
  if (inputs != null) {
    List<String> nums = inputs.split(' ');
    int a = int.parse(nums[0]);
    int b = int.parse(nums[1]);
    print(a / b);
  }
}
