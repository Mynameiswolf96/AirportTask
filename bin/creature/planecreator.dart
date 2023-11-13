import '../airplanes/plane.dart';
import '../airplanes/cargoairplane.dart';
import '../airplanes/passengerairplane.dart';
import '../enums/colors.dart';

class PlaneCreator {
  static const List<Plane> _listOfPlanes = [
    PassengerAirplane.passengerAirplane(
        '111', 'Airbus-A310✈', 650, MyColors.red, 1500, 80),
    PassengerAirplane.passengerAirplane(
        '112', 'Boeing-767', 690, MyColors.blue, 1700, 90),
    PassengerAirplane.passengerAirplane(
        '113', 'Boeing-737✈', 710, MyColors.black, 1600, 95),
    PassengerAirplane.passengerAirplane(
        '114', 'Airbus-A319✈', 800, MyColors.white, 2100, 100),
    CargoAirplane.cargoAirplane(
        '115', 'Super Hercules✈', 900, MyColors.blue, 3000, 3500),
    CargoAirplane.cargoAirplane(
        '116', 'C-17 GlobeMaster III✈', 890, MyColors.blue, 3300, 4000),
    CargoAirplane.cargoAirplane(
        '117', 'Beluga✈', 1000, MyColors.white, 4200, 4500),
    CargoAirplane.cargoAirplane(
        '118', 'Super Guppy✈', 900, MyColors.black, 3000, 3500),
  ];

  List<Plane> fetchPlanes() => List.from(_listOfPlanes);
}
