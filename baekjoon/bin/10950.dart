import 'dart:io';

void main() {
  int T = int.parse(stdin.readLineSync()!);
  List<int> result = [];
  for (int i = 0; i < T; i++) {
    List<int> num =
        stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
    int A = num[0];
    int B = num[1];
    result.add(A + B);
  }

  for (int i = 0; i < T; i++) print(result[i]);
}
