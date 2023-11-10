

import '../enums/colors.dart';

abstract class Plane {
  final String _id;
  final String _model;
  final int _speed;
  final MyColors _color;
  final int _fuelConsumption;


  Plane(this._id, this._model, this._speed, this._color,this._fuelConsumption);
  int get fuelConsumption=>_fuelConsumption;

  String get id => _id;

  String get model => _model;

  int get speed => _speed;

  MyColors get color => _color;

  @override
  String toString() {
    return 'Id:$id Model:$model Speed: $speed Color: ${color.name} Fuel consumption $fuelConsumption';
  }

}
