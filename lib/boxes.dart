import 'package:hive/hive.dart';
import 'model/mapel.dart';

class Boxes {
  static Box<Mapel> getMapels() => Hive.box<Mapel>('mapels');
}
