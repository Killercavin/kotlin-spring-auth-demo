// just like other languages class declaration is similar in dart

// syntax

/* 
class className{
}
*/

class Person {
  // properties of the class
  String? name;
  int? age;

  // constructor
  Person(this.name, this.age);

  // displaying the information of the person

  void personInfo() {
    print("$name is $age years old");
  }
}

void main() {
  Person person0 = Person('Dart', 25);
  person0.personInfo();
}
