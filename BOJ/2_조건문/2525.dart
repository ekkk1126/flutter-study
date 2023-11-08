import 'dart:io';

void main() {
  String inputs = stdin.readLineSync()!;
  List<String> nums = inputs.split(' ');
  int hour = int.parse(nums[0]);
  int min = int.parse(nums[1]);

  int time = int.parse(stdin.readLineSync()!);

  int tmp1 = (hour + (time + min) ~/ 60) % 24;
  int tmp2 = (min + time) % 60;

  print("${tmp1} ${tmp2}");
}
