class Person {
  String? name;
  int? age;
  String? sex;

  Person(String name, int age, String sex) {
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

void main() {
  Person p1 = new Person('Tom', 30, 'male'); // p1: 인스턴스
  Person p2 = new Person('Jane', 27, 'female');
  print(p1.age);
  print(p2.age);
}
