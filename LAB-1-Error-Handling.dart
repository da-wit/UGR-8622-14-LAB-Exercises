import 'dart:io';

void main() {
  // Exercise 1
  print("Exercise 1: Convert user input to integer");
  try {
    print("Enter a number:");
    String userInput = stdin.readLineSync()!;
    int convertedNumber = int.parse(userInput);
    print("Converted number: $convertedNumber");
  } catch (e) {
    if (e is FormatException) {
      print("Error: Invalid input. Please enter a valid number.");
    } else {
      print("An unexpected error occurred: $e");
    }
  }

  // Exercise 2
  print("\nExercise 2: Divide two numbers");
  try {
    double result = divideNumbers(10, 0);
    print("Result of division: $result");
  } catch (e) {
    if (e is UnsupportedError) {
      print("Error: Division by zero is not allowed.");
    } else {
      print("An unexpected error occurred: $e");
    }
  }

  // Exercise 3
  print("\nExercise 3: Read a file from disk");
  try {
    String content = readFile("example.txt");
    print("File content:\n$content");
  } catch (e) {
    if (e is FileSystemException) {
      print("Error: ${e.message}. Please check if the file exists.");
    } else {
      print("An unexpected error occurred: $e");
    }
  }
}

// Exercise 2:
double divideNumbers(double a, double b) {
  if (b == 0) {
    throw UnsupportedError;
  }
  return a / b;
}

// Exercise 3:
String readFile(String filePath) {
  File file = File(filePath);
  return file.readAsStringSync();
}
