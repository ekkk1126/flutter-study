import 'dart:io';

void main() {
  String? str_a = stdin.readLineSync();
  String? str_b = stdin.readLineSync();
  if (str_a != null && str_b != null) {
    int a = int.parse(str_a);
    int b = int.parse(str_b);
    for (int i = 2; i >= 0; i--) {
      int target_b = int.parse(str_b[i]);
      print(a * target_b);
    }
    print(a * b);
  }
}
