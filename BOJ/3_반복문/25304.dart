import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;

  for (int i = 0; i < n; i++) {
    String inputs = stdin.readLineSync()!;
    List<String> inputs2 = inputs.split(' ');
    int price = int.parse(inputs2[0]);
    int num = int.parse(inputs2[1]);

    sum += (price * num);
  }

  if (x == sum)
    print('Yes');
  else
    print('No');
}
