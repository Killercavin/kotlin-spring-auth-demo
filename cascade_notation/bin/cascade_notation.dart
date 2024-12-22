class Car {
  var make = 'Toyota';
  var dateOfManufacture = 2024;
}

void main(List<String> arguments) {
  print('Welcome to dart cascade notation');

  // imagine we had a constructor Car()

  /* 
  var car = Car();
  ..make = car.make;
  ..dom = car.dateOfManufacture;
   */

  var car = Car();
  print(car.make);

  // record
  print(Record);
}
