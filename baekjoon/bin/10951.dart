import 'dart:io';

void main() {
  List<int> sum = [];

  for (int i = 0; i < 5; i++) {
    List<int> num =
        stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
    int A = num[0];
    int B = num[1];
    sum.add(A + B);
  }

  for (int i = 0; i < 5; i++) print(sum[i]);
}
