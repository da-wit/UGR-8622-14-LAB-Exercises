void main() {
  double num1 = 10.5;
  double num2 = 7.3;
  double sumResult = addNum(num1, num2);
  print("Exercise 1: Sum of $num1 and $num2 is $sumResult");

  int numberToCheck = 13;
  bool isPrimeResult = isPrime(numberToCheck);
  print("Exercise 2: $numberToCheck is prime: $isPrimeResult");

  String inputString = "Hello, World!";
  String reversedString = reverseString(inputString);
  print("Exercise 3: Original: $inputString, Reversed: $reversedString");
}

double addNum(double a, double b) {
  return a + b;
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

String reverseString(String input) {
  List<String> characters = input.split('');
  List<String> reversedCharacters = characters.reversed.toList();
  return reversedCharacters.join();
}
