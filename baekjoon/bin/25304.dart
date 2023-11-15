import 'dart:io';

void main() {
  int amount = int.parse(stdin.readLineSync()!);
  int N = int.parse(stdin.readLineSync()!);
  List<int> result = [];
  for (int i = 0; i < N; i++) {
    List<int> list =
        stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
    int price = list[0];
    int cnt = list[1];
    result.add(price * cnt);
  }

  int sum = 0;
  for (int i = 0; i < N; i++) {
    sum += result[i];
  }

  if (sum == amount)
    print('Yes');
  else
    print('No');
}
