import 'dart:io';

void main() {
  List<int> time = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int hour = time[0];
  int min = time[1];

  if (min < 45) {
    if (hour == 0)
      hour = 23;
    else hour -= 1;
    print('${hour} ${min+60-45}');
  }
  else
    print('${hour} ${min-45}');
}