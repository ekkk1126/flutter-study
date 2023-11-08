// ignore_for_file: file_names
import 'dart:io';

void main() {
  int A = int.parse(stdin.readLineSync()!);
  int B = int.parse(stdin.readLineSync()!);
  int sum = A + B;
  int sub = A - B;
  int mul = A * B;
  int div = A ~/ B;
  // var result = div.toInt();
  int res = A % B;
  print(sum);
  print(sub);
  print(mul);
  print(div);
  print(res);
}
