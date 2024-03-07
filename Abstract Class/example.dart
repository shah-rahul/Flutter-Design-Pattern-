abstract class Shape {
  // Abstract method to calculate the area
  double calculateArea();

  // Abstract method to draw the shape
  void draw();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  void draw() {
    print('Drawing Circle with radius $radius');
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }

  @override
  void draw() {
    print('Drawing Square with side $side');
  }
}

void main() {
  // Creating objects of Circle and Square
  Circle circle = Circle(5.0);
  Square square = Square(4.0);

  // Calling methods
  print('Area of Circle: ${circle.calculateArea()}');
  circle.draw();

  print('Area of Square: ${square.calculateArea()}');
  square.draw();
}
