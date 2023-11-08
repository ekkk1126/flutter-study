import 'dart:io';
import 'dart:math';

void main() {
  var num1 = int.parse(stdin.readLineSync()!);
  var num2 = stdin.readLineSync()!;
  List<int> num2list = num2.split('').map((e) => int.parse(e)).toList();

  num result = 0;
  var exp = 0;

  for (int i = num2list.length - 1; i >= 0; i--) {
    var mul = num1 * num2list[i];
    print(mul);
    result += mul * pow(10, exp);
    exp += 1;
  }
  print(result);
}
