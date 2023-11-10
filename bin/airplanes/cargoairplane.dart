import '../airport.dart';
import '../enums/colors.dart';
import 'Plane.dart';

class CargoAirplane extends Plane {
  final int _liftingCapacity;


  CargoAirplane(super._id, super._name, super._speed, super._colors,super._fuelConsumption,
      this._liftingCapacity);



  int get liftingCapacity => _liftingCapacity;


  @override String toString() {
    // TODO: implement toString
    return '${super.toString()} Lifting capacity: $_liftingCapacity' ;
  }
  /*@override
  String toString() {
    return ' Id:$id \n Model:$model \n Speed: $speed \n Color: $color \n Lifting capacity: $_liftingCapacity';
  }*/
}
