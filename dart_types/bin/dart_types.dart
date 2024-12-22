void main() {
  print('Dart types');

  // lets say you want to declare a variable of type integer
  var a = 5; // this is int a = 5; behind the scenes
  var b = 5.5; // this is double b = 5.5; behind the scenes
  print("a + b = ${a + b}");

  // string data type is used to hol string values
  // example String s = "Hello world!";

  var s = "Hello world";
  print(s);

  // type conversions int/double to string
  var intString = int.parse('555');
  print("The integer string is ==> $intString");

  // for double
  var doubleString = double.parse('5.555');
  print("The double string is ==> $doubleString");

  // boolean on the other hand is used to store true or false values example
  var isCodingFun = true;
  print(
      !isCodingFun); // will return the opposite since I have added the not operator(!)

  // conditional expression
  var result = a > b
      ? "a is greater than b"
      : "b is greater than a"; // more like a ternary operator
  print(result);
}
