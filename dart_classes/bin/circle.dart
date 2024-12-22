import 'dart:io';

class Circle {
  // Private property with underscore (_)
  double _radius;

  // Constructor to initialize the radius
  Circle(this._radius);

  // Getter method to access the private radius
  double get radius => _radius;

  // Setter method to update the radius with validation
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print('Radius must be greater than 0');
    }
  }

  // Method to calculate area of the circle
  double calculateArea() {
    return 3.1416 * _radius * _radius; // Area = πr²
  }
}

void main() {
  // Creating an instance of Circle
  stdout.write("Enter the value of the radius: ");
  double radius = double.parse(stdin.readLineSync().toString());
  Circle circle = Circle(radius);

  // Accessing the radius using getter
  print("Initial radius: ${circle.radius}");

  // Calculating and printing the area
  print("Initial area: ${circle.calculateArea()}");

  // Updating the radius using setter
  stdout.write("Enter the value of the new radius: ");
  double newRadius = double.parse(stdin.readLineSync().toString());
  circle.radius = newRadius;

  // Accessing updated radius and area
  print("Updated radius: ${circle.radius}");
  print("Updated area: ${circle.calculateArea()}");

  // Trying to set an invalid radius
  stdout
      .write("Enter the value of the final radius (make it less than zero): ");
  double finalRadius = double.parse(stdin.readLineSync().toString());
  circle.radius = finalRadius; // This will trigger validation
}
