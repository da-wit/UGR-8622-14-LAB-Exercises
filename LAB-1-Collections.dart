import 'dart:core';
import 'dart:math';
// import 'dart:io';

void exercise1() {
  print("Exercise 1: Managing a List of Hobbies");

  List<String> hobbies = ["Reading", "Playing video games", "Coding"];

  print("Current Hobbies: $hobbies");

  hobbies.add("Hiking");
  print("Added Hobby: $hobbies");

  hobbies.remove("Swimming");
  print("Removed Hobby: $hobbies");

  hobbies.sort();
  print("Sorted Hobbies: $hobbies");

  print("Is the list empty? ${hobbies.isEmpty}");
}

void exercise2() {
  print("\nExercise 2: Removing Duplicates from a List");

  List<int> numbers = List.generate(10, (_) => Random().nextInt(5));
  print("Generated Numbers: $numbers");

  Set<int> uniqueNumbers = numbers.toSet();
  print("Unique Numbers: $uniqueNumbers");
}

void exercise3() {
  print("\nExercise 3: Managing a Map of Student Names and Marks");

  Map<String, int> studentMarks = {
    "dawit": 85,
    "kidus": 90,
    "bulala": 78,
  };

  print("Current Student Marks: $studentMarks");

  studentMarks["David"] = 95;
  print("Added Student: $studentMarks");

  studentMarks.putIfAbsent("dawit", () => 88); // Won't update existing entry
  print("Updated Student Marks: $studentMarks");

  studentMarks.forEach((name, mark) {
    print("$name's Mark: $mark");
  });

  print("Does kidus exist? ${studentMarks.containsKey("kidus")}");
}

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

void exercise4() {
  print("\nExercise 4: Simulating a Shopping Cart");

  List<Product> shoppingCart = [];

  Product laptop = Product("Laptop", 1200.0, 1);
  Product headphones = Product("Headphones", 99.99, 2);

  shoppingCart.add(laptop);
  shoppingCart.add(headphones);

  print("Current Shopping Cart: $shoppingCart");

  double total = shoppingCart.fold(
      0, (sum, product) => sum + (product.price * product.quantity));
  print("Total Price: \$$total");

  shoppingCart.remove(headphones);
  print("Updated Shopping Cart: $shoppingCart");
}

class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    int totalMarks = marks.reduce((a, b) => a + b);
    return totalMarks / marks.length;
  }
}

void exercise5() {
  print("\nExercise 5: Average Mark Calculation in a Student Class");

  Student dawit = Student("dawit", [85, 90, 92]);
  Student kidus = Student("kidus", [78, 80, 85]);

  print("${dawit.name}'s Average Mark: ${dawit.calculateAverageMark()}");
  print("${kidus.name}'s Average Mark: ${kidus.calculateAverageMark()}");
}

void main() {
  exercise1();
  exercise2();
  exercise3();
  exercise4();
  exercise5();
}
