// Exercise 1: Rectangle class
class Rectangle {
  double width;
  double height;

  // Constructor for the Rectangle class
  Rectangle(this.width, this.height);

  // Method to calculate the area of the rectangle
  double calculateArea() {
    return width * height;
  }

  // Method to calculate the perimeter of the rectangle
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

// Exercise 2: Product class
class Product {
  String name;
  double price;
  int quantity;

  // Constructor for the Product class
  Product(this.name, this.price, this.quantity);

  // Method to calculate the total cost of the product
  double calculateTotalCost() {
    return price * quantity;
  }
}

// Exercise 3: Abstract Shape class
abstract class Shape {
  // Abstract method to calculate the area of the shape
  double calculateArea();
}

// Subclass Circle inheriting from Shape
class Circle extends Shape {
  double radius;

  // Constructor for the Circle class
  Circle(this.radius);

  // Implementation of the calculateArea method for Circle
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Subclass Square inheriting from Shape
class Square extends Shape {
  double side;

  // Constructor for the Square class
  Square(this.side);

  // Implementation of the calculateArea method for Square
  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Exercise 1
  Rectangle rectangle = Rectangle(5.0, 8.0);
  print("Rectangle Area: ${rectangle.calculateArea()}");
  print("Rectangle Perimeter: ${rectangle.calculatePerimeter()}");

  // Exercise 2
  Product product = Product("Widget", 10.0, 3);
  print("Total Cost of ${product.name}: ${product.calculateTotalCost()}");

  // Exercise 3
  Circle circle = Circle(4.0);
  print("Circle Area: ${circle.calculateArea()}");

  Square square = Square(3.0);
  print("Square Area: ${square.calculateArea()}");
}
