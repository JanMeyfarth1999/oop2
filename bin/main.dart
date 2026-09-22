import 'dart:async';

import 'package:oop2/triangle.dart';

void main() {
  Triangle triangle1 = Triangle.feet(2, 3);
   
  print(triangle1.width);
  print(triangle1.height);
  print(triangle1.area());
}
