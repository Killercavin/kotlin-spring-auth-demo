void main(List<String> arguments) {
  print("Another banter on lists as part of collections");

  // list syntax
  List myList = [0, 1, 2, 3, 4, 5];
  print("My list is $myList");

  // list can carry data of all types and not restricted

  myList.add('string0'); // add items at the end of the list
  print("My new list is $myList");

  // add elements or a group of elements to the list
  myList.addAll(['string1', true, 5.5]);
  print("The list after adding a group of items is $myList");

  // remove elements from a list in dart
  myList.remove(0); // removes specific item from the argument
  myList.insert(0, 5); // takes 2 parameters index and value
  myList.insertAll(3, [
    9,
    4,
    false,
    'string2'
  ]); // similar to the insert() but it takes several values insaed of a single
  print("My list after the remove is $myList");

  // many more methods exists and be sure to experiment on your own
}
