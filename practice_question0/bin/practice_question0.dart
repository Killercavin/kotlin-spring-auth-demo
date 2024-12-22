import 'dart:io';

import 'package:practice_question0/practice_question0.dart'
    as practice_question0;

void main(List<String> arguments) {
  print('Hello world: ${practice_question0.calculate()}!');

  // A program that print my name in dart
  var myName = "Dartcorder";
  print("My name is $myName");

  print("My name is \"$myName\"");
  print('I\'m "$myName"');

  // const of int value initialized to 7
  const num = 7;
  print("The value of the constant variable is $num");

  // a program that find the simple interest
  var principleAmount = 500;
  const rate = 10;
  var timeInMonths = 30;
  var simpleInterest = principleAmount * timeInMonths * (rate / 100);
  print("The simple interest is $simpleInterest");

  // program to calculate the square from a user input
  stdout.write("Enter the measurement of the square side: ");
  int sideMeasurement = int.parse(stdin.readLineSync()!);
  var square = sideMeasurement * sideMeasurement;
  print("The square is $square");

  // Prompt user for first name
  stdout.write("Enter your first name: ");
  String firstName = stdin.readLineSync() ?? '';

  // Prompt user for last name
  stdout.write("Enter your last name: ");
  String lastName = stdin.readLineSync() ?? '';

  // Combine first and last name
  String fullName = "$firstName $lastName";

  // Print full name
  print("Full Name: $fullName");

  // stdout.write("The square is $square");

  // Input two integers
  stdout.write("Enter the dividend: ");
  int dividend = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("Enter the divisor: ");
  int divisor = int.parse(stdin.readLineSync() ?? '1');

  // Calculate quotient and remainder
  int quotient = dividend ~/ divisor; // Integer division
  int remainder = dividend % divisor;

  // Display results
  print("Quotient: $quotient");
  print("Remainder: $remainder");

  // Input two numbers
  stdout.write("Enter the first number (a): ");
  int a = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("Enter the second number (b): ");
  int b = int.parse(stdin.readLineSync() ?? '0');

  print("Before swapping: a = $a, b = $b");

  // Swap logic without using a third variable
  a = a + b;
  b = a - b;
  a = a - b;

  // Display swapped values
  print("After swapping: a = $a, b = $b");

  // Input a string
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync() ?? '';

  // Remove all whitespaces
  String noWhitespace = input.replaceAll(RegExp(r'\s+'), '');

  // Print result
  print("String without whitespaces: $noWhitespace");

  // Input a string
  stdout.write("Enter a numeric string: ");
  String numericString = stdin.readLineSync() ?? '0';

  // Convert string to integer
  int number = int.parse(numericString);

  // Display result
  print("Converted integer: $number");
}
