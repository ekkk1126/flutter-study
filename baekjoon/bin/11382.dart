import 'dart:io';

void main() {
  List<int> input =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();

  var sum = 0;

  for (int i = 0; i < input.length; i++) {
    sum += input[i];
  }

  print(sum);
}
