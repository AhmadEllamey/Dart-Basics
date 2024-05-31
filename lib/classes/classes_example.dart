import 'package:dart_basics/classes/mixin_example.dart';

/// for more information please visit
/// https://dart.dev/language/classes

sealed class GeometryObject{}

// Override methods exists
// Overloading methods doesn't exists in dart
class CustomPoint extends GeometryObject with GreetingMixin {
  // Initializer list of variables and values
  double x = 2.0;
  double y = 2.0;
  bool _origin;

  // Generative constructor with initializing formal parameters:
  CustomPoint(this.x, this.y,[this._origin = false]);

  /// If you don't declare a constructor, Dart uses the default constructor.
  /// The default constructor is a generative constructor without arguments or name.

  // Named constructor
  CustomPoint.origin(this._origin,{required this.x,required this.y,});

  // Redirect constructor
  CustomPoint.alongXAxis(double x) : this(x, 0);

  factory CustomPoint.fromJson(Map<String, dynamic> json) {
    return CustomPoint(json['x'], json['y']);
  }

  // in mac you use (Command + N)
  bool get origin => _origin;

  set origin(bool value) {
    _origin = value;
  }

}
