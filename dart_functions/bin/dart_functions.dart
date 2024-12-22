// Types of functions

// Function with no parameter and return type

void noParNoRet() {
  print("This function has no parameter nor return type");
}

// function with a parameter and no return type
void parNoRet(String param) {
  print("This function has '$param' as the parameter and no return type");
}

// function with no parameter and a return type
String noParRet() {
  return "This is a function with no parameter but a return type";
}

// function with a parameter and a return type
String parRet(int rank, String lang) {
  return "'$lang' is my number '$rank' amongst all";
}

// Function types

// Anonymous functions (lambdas or closures)
// These are functions similar to the others the only exception is that they have no names
// suntax example below

/*
(parameters if exists){
body
}
 */

// key take aways

/* 
* anonymous functions are good for quick function functionalities
* functions can be assigned as a variable or as a parameter to other functions too
*/

void main(List<String> arguments) {
  print('A stop on functions train!');
  noParNoRet();
  parNoRet('passed parameter');
  noParRet();
  parRet(1, 'Dart');

  // example of an anonymous function
  const list = <String>['apples', 'bananas', 'oranges'];
  var uppercaseList = list.map((item) => item.toUpperCase()).toList();
  print(uppercaseList);

  /* var uppercaseList = list.map((item) {
    return item.toUpperCase();
  }).toList();
// Convert to list after mapping

  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  }

  // this fetches all the items from the list
  list.map((fruit) {
    print(fruit);
  });

  for (String fruit in list) {
    print("The items in the list are '$fruit'");
  }

  print("The loop is out"); */

  /* list.forEach((String fruit) {
    print(fruit);
  }); */ // this will work too but let's ignore it for now
}
