import 'plane.dart';

class PassengerAirplane extends Plane {
  final int capacity;

  const PassengerAirplane.passengerAirplane(
    super.id,
    super.model,
    super.speed,
    super.colors,
    super.fuelConsumption,
    this.capacity,
  );

  @override
  String toString() {
    return '${super.toString()} Capacity: $capacity';
  }

  @override
  int getLiftingCapacity() => 0;

  @override
  int getPassengerCapacity() => capacity;
}
