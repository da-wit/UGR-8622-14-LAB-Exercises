class Person {
  String name;
  int age;
  String address;

  // Constructor for the Person class
  Person(this.name, this.age, this.address);

  void displayInfo() {
    print("Name: $name, Age: $age, Address: $address");
  }

  void updateAddress(String newAddress) {
    address = newAddress;
    print("$name's address updated to: $address");
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor for the Student class
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    return marks.reduce((sum, mark) => sum + mark);
  }

  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0;
    }
    return calculateTotalMarks() / marks.length;
  }
}

void main() {
  // Ex 1
  Person person1 = Person("John Doe", 25, "123 Main St");
  person1.displayInfo();
  person1.updateAddress("456 Oak St");

  // Ex 2
  Student student1 =
      Student("Alice Smith", 20, "789 Elm St", 101, [90, 85, 92, 88, 95]);
  student1.displayInfo();
  print("Total Marks: ${student1.calculateTotalMarks()}");
  print("Average Marks: ${student1.calculateAverageMarks()}");
}
