import 'package:airport/airport.dart' as airport;
import 'airplanes/Plane.dart';
import 'airplanes/cargoairplane.dart';
import 'enums/colors.dart';
import 'airplanes/passengerairplane.dart';
import 'dart:io';

class Airport {
  final List<CargoAirplane> _cargoAirplanes;
  final List<PassengerAirplane> _passengerAirplanes;
  static Airport? _instance;

  Airport._(this._cargoAirplanes, this._passengerAirplanes);

  static Airport? getInstance(List<CargoAirplane> cargoAirplane,
      List<PassengerAirplane> passengerAirplane) {
    if (_instance == null) {
      _instance = Airport._(cargoAirplane, passengerAirplane);
    }
    return _instance;
  }

  List<CargoAirplane> get cargoAirplanes => _cargoAirplanes;

  List<PassengerAirplane> get passengerAirplanes => _passengerAirplanes;

  int getTotalCapacity() {
    int totalCapacity = 0;
    _cargoAirplanes.forEach((element) {
      totalCapacity += element.liftingCapacity;
    });
    return totalCapacity;
  }

  int getTotalPassenger() {
    int totalPassenger = 0;
    _passengerAirplanes.forEach((element) {
      totalPassenger += element.capacity;
    });
    return totalPassenger;
  }

  void printInfoAboutCargoAirplane() {
    _cargoAirplanes.forEach((element) {
      print(element);
    });
  }

  void printInfoAboutPassangerAirplane() {
    _passengerAirplanes.forEach((element) {
      print(element);
    });
  }

  List<Plane> planes(List<CargoAirplane> cargoAirplane,
      List<PassengerAirplane> passengerAirplane, int minFuel, int maxFuel) {
    List<Plane> suitableAirplane = [];
    for (int i = 0; i < cargoAirplanes.length; i++) {
      if (cargoAirplanes[i].fuelConsumption >= minFuel &&
          cargoAirplanes[i].fuelConsumption <= maxFuel) {
        suitableAirplane.add(cargoAirplane[i]);
      }
    }
    for (int i = 0; i < passengerAirplanes.length; i++) {
      if (passengerAirplanes[i].fuelConsumption >= minFuel &&
          passengerAirplanes[i].fuelConsumption <= maxFuel) {
        suitableAirplane.add(passengerAirplane[i]);
      }
    }
    return suitableAirplane;
  }
}

void main() {
  CargoAirplane cargoAirplane = CargoAirplane(
      "567", "Aero Spacelines Super Guppy", 700, MyColors.blue, 3500, 1500);
  CargoAirplane cargoAirplane2 = CargoAirplane(
      "568", "AgustaWestland AW609", 720, MyColors.black, 3200, 1700);
  CargoAirplane cargoAirplane3 =
      CargoAirplane("569", "Airbus Beluga", 685, MyColors.blue, 3800, 2000);
  CargoAirplane cargoAirplane4 =
      CargoAirplane("570", "Airbus Beluga XL", 690, MyColors.red, 3600, 1400);
  List<CargoAirplane> allCargoAirplane = [
    cargoAirplane,
    cargoAirplane2,
    cargoAirplane3,
    cargoAirplane4
  ];

  PassengerAirplane passengerAirplane =
      PassengerAirplane('111', ' Airbus-A310', 90, MyColors.blue, 4000, 50);
  PassengerAirplane passengerAirplane2 =
      PassengerAirplane('111', 'Boeing-747', 90, MyColors.blue, 3650, 90);
  PassengerAirplane passengerAirplane3 =
      PassengerAirplane('111', ' Boeing-777', 90, MyColors.blue, 3000, 85);
  PassengerAirplane passengerAirplane4 =
      PassengerAirplane('114', 'Airbus-A380', 780, MyColors.red, 4200, 70);
  List<PassengerAirplane> listOfPassengerAirplanes = [
    passengerAirplane,
    passengerAirplane2,
    passengerAirplane3,
    passengerAirplane4,
  ];
  Airport airport = Airport._(allCargoAirplane, listOfPassengerAirplanes);
  print('Total Capacity ${airport.getTotalCapacity()}');
  airport._cargoAirplanes.sort((low, max) => low.liftingCapacity.compareTo(max
      .liftingCapacity)); // сортировка грузовых самолётов по грузоподъёмности
  airport._passengerAirplanes.sort((a, b) => a.capacity.compareTo(
      b.capacity)); //сортировка пассажирских самолётов по вместимости человек
  airport.printInfoAboutCargoAirplane();
  airport.printInfoAboutPassangerAirplane();
  print("Введите диапазон горючего который вас интересует");
  int firstNumOfFuel = int.parse(stdin.readLineSync() ?? '0');
  int lastNumOfFuel = int.parse(stdin.readLineSync() ?? '0');
  print(airport.planes(allCargoAirplane, listOfPassengerAirplanes,
      firstNumOfFuel, lastNumOfFuel));
}
