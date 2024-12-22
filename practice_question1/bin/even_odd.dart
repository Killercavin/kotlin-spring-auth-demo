import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync().toString());

  if (number % 2 == 0) {
    print("$number is even");
  } else if (number % 2 == 1) {
    print("$number is odd");
  } else {
    print("$number is unknown!");
  }
}
