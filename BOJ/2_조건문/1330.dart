import 'dart:io';

void main() {
  String inputs = stdin.readLineSync()!;
  List<String> nums = inputs.split(' ');
  int a = int.parse(nums[0]);
  int b = int.parse(nums[1]);
  if (a > b)
    print('>');
  else if (a < b)
    print('<');
  else
    print('==');
}
