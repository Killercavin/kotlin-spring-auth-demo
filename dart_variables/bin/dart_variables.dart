import 'package:dart_variables/dart_variables.dart' as dart_variables;

// top level variables - variables that can be accessed from anywhere in the file they have the widest scope
// top level variables are declared outside of any function, method, or class
// example below
var topLevelVariable = 'I am a top level variable';

late String description;

final dateNow = DateTime.now().toLocal();

const programmingLanguage = 'Dart';

void main(List<String> arguments) {
  print('Hello world: ${dart_variables.calculate()}!');
  print(topLevelVariable);

  /**
   * Null safety approach in Dart
   */

  String? name; // Nullable type. Can be `null` or string.
  String names; // Non-nullable type. Cannot be `null` but can be string.
  names = 'Dart';
  print("The nullable variable name is $name");
  print("The non nullable variable names is $names");

  /* String? isName;
  assert(isName == name);
  print(isName); */

  description =
      'I am initializing a variable that hate late key word before it';
  print(description);

  print(
      'At $dateNow I am still coding $programmingLanguage which I find absolutely intuitive!');

  print('${description is! num}');

  const myInt = 5;
  print("Is my integer a double ${myInt is double}"); // false
  print("Is my integer a double ${myInt is! double}"); // true
}
