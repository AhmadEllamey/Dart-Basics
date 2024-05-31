/// for more information please visit
/// https://dart.dev/language/enums

// enums is a special kind of classes
enum CustomColor {
  red,
  green,
  blue,
}

// extension on the custom color enum
extension CustomColorNames on CustomColor{
  String colorName(){
    switch (this){
      case CustomColor.red : {
        return "Red";
      }
      case CustomColor.green : {
        return "Green";
      }
      case CustomColor.blue : {
        return "Blue";
      }
      default : {
        return "RGB";
      }
    }
  }
}

// enhanced enum
enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}