import 'dart:io';

void main() {
  String name = " Dawit";
  int age = 21;
  String favoriteColor = "Blue";

  print("My name is $name");
  print("I am $age");
  print("My favorite color is $favoriteColor");

  const int speedOfLight = 299792458;

  print("Enter distance in meter");

  String userInput = stdin.readLineSync()!;
  // String? userInput = stdin.readLineSync();

  double distance = double.parse(userInput);
  double time = distance / speedOfLight;

  print(
      "The amount of time it takes to a distance of $distance with speed of $speedOfLight is $time");
}
