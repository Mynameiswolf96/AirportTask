import 'package:airport/airport.dart' as airport;

import '../airplanes/Plane.dart';

class Airport {
  List<Plane> listOfPlanes;
  static Airport? _instance;

  Airport._(this.listOfPlanes);

  static Airport? getInstance(List<Plane> listOfPlanes) {
    _instance ??= Airport._(listOfPlanes);
    return _instance;
  }

  int getTotalCapacity() {
    int totalCapacity = 0;
    listOfPlanes.forEach((element) {
      totalCapacity += element.getLiftingCapacity();
    });
    return totalCapacity;
  }

  int getTotalPassenger() {
    int totalPassenger = 0;
    listOfPlanes.forEach((element) {
      totalPassenger += element.getPassengerCapacity();
    });
    return totalPassenger;
  }

  List<Plane> findPlanes(int minFuel, int maxFuel) {
    for (int i = 0; i < listOfPlanes.length; i++) {
      if (listOfPlanes[i].fuelConsumption > minFuel ||
          listOfPlanes[i].fuelConsumption < minFuel) {
        listOfPlanes.remove(listOfPlanes[i]);
      }
    }
    return listOfPlanes;
  }

  List<Plane> sortedPlanesBySpeed() {
    listOfPlanes.sort((a, b) => a.speed.compareTo(b.speed));
    return listOfPlanes;
  }
}
