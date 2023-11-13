import 'package:airport/airport.dart' as airport;

import '../airplanes/plane.dart';

class Airport {
  List<Plane> planes;
  static Airport? _instance;

  Airport._(this.planes);

  static Airport getInstance(List<Plane> listOfPlanes) {
    _instance ??= Airport._(listOfPlanes);
    return _instance!;
  }

  int getTotalCapacity() {
    int totalCapacity = 0;
    planes.forEach((element) {
      totalCapacity += element.getLiftingCapacity();
    });
    return totalCapacity;
  }

  int getTotalPassenger() {
    int totalPassenger = 0;
    planes.forEach((element) {
      totalPassenger += element.getPassengerCapacity();
    });
    return totalPassenger;
  }

  List<Plane> findPlanesByFuel(int minFuel, int maxFuel) {
    List<Plane> copyListOfPlanes = List.from(planes);
    copyListOfPlanes.removeWhere((element) =>
        element.fuelConsumption < minFuel || element.fuelConsumption > maxFuel);
    return copyListOfPlanes;
  }

  List<Plane> sortedPlanesBySpeedAndModel() {
    List<Plane> copyListOfPlanes = List.from(planes);
    copyListOfPlanes.sort((a, b) {
      int speedComparison = a.speed.compareTo(b.speed);
      if (speedComparison != 0) {
        return speedComparison;
      } else {
        return a.model.compareTo(b.model);
      }
    });

    return copyListOfPlanes;
  }
}
