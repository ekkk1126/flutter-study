class Person {
  String? name;
  int? age;
  String? sex;

  Person({String? name, int? age, String? sex}) {
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

void main() {
  Person p1 = new Person(age:30); // p1: 인스턴스
  Person p2 = new Person(age:27);
  print(p1.age);
  print(p2.age);
}
