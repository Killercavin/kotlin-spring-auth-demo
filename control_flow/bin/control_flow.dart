void main(List<String> arguments) {
  print('Control flow here');

  int age = 10;
  if (age < 18) {
    print("The person is unable to vote");
  } else if (age == 18) {
    print(
        "The person has just attained the adult age and can now start voting");
  } else {
    print("The person has the full voting rights outside age limit");
  }
}
