import 'plane.dart';

class CargoAirplane extends Plane {
  final int liftingCapacity;

  const CargoAirplane.cargoAirplane(
    super.id,
    super.name,
    super.speed,
    super.colors,
    super.fuelConsumption,
    this.liftingCapacity,
  );

  @override
  String toString() {
    return '${super.toString()} Lifting capacity: $liftingCapacity';
  }

  @override
  int getLiftingCapacity() => liftingCapacity;

  @override
  int getPassengerCapacity() => 0;
}
