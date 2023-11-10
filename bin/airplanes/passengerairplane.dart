import 'Plane.dart';

class PassengerAirplane extends Plane {
  final int _capacity;

  PassengerAirplane(super._id, super._model, super._speed, super._colors,
      super._fuelConsumption, this._capacity);

  int get capacity => _capacity;

  @override
  String toString() {
    return '${super.toString()} Capacity: $_capacity';
  }
}
