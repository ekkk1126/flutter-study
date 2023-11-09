import 'dart:io';

void main() {
  String inputs = stdin.readLineSync()!;
  List<String> nums = inputs.split(' ');
  int hour = int.parse(nums[0]);
  int min = int.parse(nums[1]);

  if (min < 45) {
    hour -= 1;
    min = 60 - (45 - min);
    if (hour < 0) hour = 23;
  } else {
    min -= 45;
  }

  print("${hour} ${min}");
}
