import 'dart:io';

void main() {
  List<int> input =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();

  int A = input[0];
  int B = input[1];

  if (A < B)
    print("<");
  else if (A > B)
    print(">");
  else
    print("==");
}
