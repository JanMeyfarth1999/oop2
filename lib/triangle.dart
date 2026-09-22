enum MeasurementSystem { mm, cm, dm, m, inch, feet }

class Triangle {
  double width;
  double height;

  Triangle(this.width, this.height, MeasurementSystem system) {
    double factor = 1;

    switch (system) {
      case MeasurementSystem.mm:
        factor = 1;
        break;

      case MeasurementSystem.cm:
        factor = 10;
        break;

      case MeasurementSystem.dm:
        factor = 100;
        break;

      case MeasurementSystem.m:
        factor = 1000;
        break;

      case MeasurementSystem.inch:
        factor = 25.4;
        break;

      case MeasurementSystem.feet:
        factor = 304.8;
        break;
    }
    width = width * factor;
    height = height * factor;
  }
}
