import '../enums/colors.dart';
import 'funcionalForAirplanes.dart';

abstract class Plane implements FunctionalForAirplanes {
  final String id;
  final String model;
  final int speed;
  final MyColors color;
  final int fuelConsumption;

  const Plane(
    this.id,
    this.model,
    this.speed,
    this.color,
    this.fuelConsumption,
  );

  @override
  String toString() {
    return 'Id:$id Model:$model Speed: $speed Color: ${color.name} Fuel consumption $fuelConsumption';
  }
}
