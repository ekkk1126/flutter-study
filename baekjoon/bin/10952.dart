import 'dart:io';

void main() {
  List<int> sum = [];
  int i = 0;
  do {
    List<int> num =
        stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
    int A = num[0];
    int B = num[1];
    sum.add(A + B);
    i += 1;
  } while (sum[i - 1] != 0);

  for (int j = 0; j < i - 1; j++) print(sum[j]);
}
