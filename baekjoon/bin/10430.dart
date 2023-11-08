// ignore_for_file: file_names
import 'dart:io';

void main() {
  var A = int.parse(stdin.readLineSync()!);
  var B = int.parse(stdin.readLineSync()!);
  var C = int.parse(stdin.readLineSync()!);

  print((A + B) % C);
  print(((A % C) + (B % C)) % C);
  print((A * B) % C);
  print(((A % C) * (B % C)) % C);
}
