class Marker {
  //Public
  String color, comp;
  int? price;
  //private
  //String _type;
  //UnNamed Constructor
  Marker(this.color, this.comp);
  //Named Constructor we can make as much as we want
  Marker.myConstructor(this.color, this.comp, this.price);
}

class Car {
  // for default value of data members bcz dart would not allowed us to use without inilization
  late String company;
  int? price;
}

class Attendance {
  int reg;
  String name;
  bool status;
  //required only comes with the data type that was not already defined
  Attendance({required this.name, required this.reg, this.status = true});
}

// get set data
class Person {
  String _name;
  int _age;
  Person(this._name, this._age);
  int get getAge => _age;
  int setAge(int age) => age = age;
  String get getName {
    return _name;
  }
}

void main() {
  var m1 = Marker("Red", "Panther");
  var m2 = Marker.myConstructor("blue", "Lion", 50);
  print(m1);
  print(m2);
}
