import 'measurement_system.dart';

class Triangle {
  double width;
  double height;

  Triangle._internal(this.width, this.height);

  Triangle(double width, double height, MeasurementSystem system)
    : this._internal(_convertToMm(width, system), _convertToMm(height, system));

  Triangle.mm(double width, double height) : this._internal(width, height);

  Triangle.cm(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.cm),
        _convertToMm(height, MeasurementSystem.cm),
      );

  Triangle.dm(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.dm),
        _convertToMm(height, MeasurementSystem.dm),
      );

  Triangle.m(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.m),
        _convertToMm(height, MeasurementSystem.m),
      );

  Triangle.inch(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.inch),
        _convertToMm(height, MeasurementSystem.inch),
      );

  Triangle.feet(double width, double height)
    : this._internal(
        _convertToMm(width, MeasurementSystem.feet),
        _convertToMm(height, MeasurementSystem.feet),
      );

  static double _convertToMm(double value, MeasurementSystem system) {
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
    return value * factor;
  }
}
