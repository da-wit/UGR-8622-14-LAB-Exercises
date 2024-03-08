import 'dart:io';

void main() {
  int num = 0;

  if (num % 2 == 0) {
    print("even");
  } else {
    print("odd");
  }

  for (int i = 0; i <= 10; i++) {
    print(i);
  }

  print("Calculator");

  print("Enter the first number");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  double result;

  switch (operation) {
    case '+':
      result = num1 + num2;
      print("Result  $num1 + $num2 = $result");
      break;
    case '-':
      result = num1 - num2;
      print("Result: $num1 - $num2 = $result");
      break;
    case '*':
      result = num1 * num2;
      print("Result: $num1 * $num2 = $result");
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print("Result: $num1 / $num2 = $result");
      } else {
        print("Error: Division by zero is not allowed.");
      }
      break;
    default:
      print("Error: Invalid operation entered.");
  }

  print("Grade");
  print("Enter your grade:");
  String? gradeInput = stdin.readLineSync()!;
  double userGrade = double.parse(gradeInput);

  String grade;

  switch (userGrade ~/ 10) {
    case (10):
      grade = "A";
      print(grade);
      break;
    case (9):
      grade = "A";
      print(grade);
      break;

    case (8):
      grade = "B";
      print(grade);
      break;
    case (7):
      grade = "B";
      print(grade);
      break;
    case (6):
      grade = "C";
      print(grade);
      break;
    case (5):
      grade = "C";
      print(grade);
      break;
    default:
      print("invalid");
  }
}
