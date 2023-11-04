import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    int year = int.parse(input);
    print(year - 543);
  }
}
