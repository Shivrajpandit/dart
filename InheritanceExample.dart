// Inheritance allows a class to inherit properties and methods
// from another class. This builds on your 'class.dart' file.

// The parent class (or superclass)
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak() {
    print('$name makes a sound.');
  }
}

// The child class (or subclass) 'Dog' inherits from 'Animal'.
// It uses the 'extends' keyword.
class Dog extends Animal {
  String breed;

  // The constructor for the child class calls the parent's constructor using 'super'.
  Dog(String name, int age, this.breed) : super(name, age);

  // This is method overriding. The child class provides its own
  // implementation of a method that is already in the parent class.
  @override
  void speak() {
    print('$name barks!');
  }

  void fetch() {
    print('$name is fetching a ball.');
  }
}

// Another child class inheriting from Animal.
class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void speak() {
    print('$name meows.');
  }
}

void main() {
  // Create an instance of the parent class.
  var genericAnimal = Animal('Creature', 5);
  genericAnimal.speak(); // Output: Creature makes a sound.

  print('---');

  // Create an instance of the Dog child class.
  var myDog = Dog('Rex', 3, 'Golden Retriever');
  myDog.speak(); // This calls the overridden method in Dog. Output: Rex barks!
  myDog.fetch(); // This calls a method unique to Dog.
  print('${myDog.name} is a ${myDog.breed} and is ${myDog.age} years old.');

  print('---');

  // Create an instance of the Cat child class.
  var myCat = Cat('Whiskers', 2);
  myCat.speak(); // Calls the overridden method in Cat.
}
