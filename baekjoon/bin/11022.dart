import 'dart:io';

void main() {
  int T = int.parse(stdin.readLineSync()!);
  List<int> sum = [];
  List<int> Alist = [];
  List<int> Blist = [];

  for (int i = 0; i < T; i++) {
    List<int> num =
        stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
    int A = num[0];
    int B = num[1];
    Alist.add(A);
    Blist.add(B);
    sum.add(A + B);
  }

  for (int i = 0; i < T; i++)
    print('Case #${i + 1}: ${Alist[i]} + ${Blist[i]} = ${sum[i]}');
}
