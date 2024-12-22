import 'dart:io';

void main() {
  List<String> listOfVowels = ['a', 'e', 'i', 'o', 'u']; // list of vowels

  // Prompt user to input an alphabet
  stdout.write("Enter your fav alphabet in between a to z: ");
  String inputAlphabet = stdin.readLineSync().toString().toLowerCase();

  // Validate input length and check if it's a single letter
  if (inputAlphabet.length == 1 &&
      inputAlphabet.codeUnitAt(0) >= 97 &&
      inputAlphabet.codeUnitAt(0) <= 122) {
    bool isVowel = false;
    // Loop through the list of vowels
    for (String vowel in listOfVowels) {
      if (inputAlphabet == vowel) {
        isVowel = true;
        break;
      }
    }

    // Print result based on the loop
    if (isVowel) {
      print("$inputAlphabet is a vowel.");
    } else {
      print("$inputAlphabet is a consonant.");
    }
  } else {
    print("Invalid input. Please enter a single alphabetic character.");
  }
}
