import 'dart:io';
import 'Creature/planecreator.dart';
import 'airport/aircompany.dart';

void main() {
  Airport? airport = Airport.getInstance(PlaneCreator().fetchPlanes());
  airport?.getTotalCapacity();
  print(
      'Общее количество пассажиров в самолётах ${airport?.getTotalPassenger()}');
  print('Общая грузоподъемность в самолётах ${airport?.getTotalCapacity()}');
  print('Общая информация о самолётах ${airport?.listOfPlanes}');
  print('Самолёты отсортированы по скорости${airport?.sortedPlanesBySpeed()})');
  int minEdge = int.parse(stdin.readLineSync() ?? '0');
  int maxEdge = int.parse(stdin.readLineSync() ?? '0');
  print(
      'Самолёты в диапазоне потребления горючего от ${minEdge} до ${maxEdge}:${airport?.findPlanes(minEdge, maxEdge)}');
}
