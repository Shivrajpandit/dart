class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void showInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Person p = Person('Charlie', 25);
  p.showInfo();
}
