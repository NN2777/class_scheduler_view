import 'package:hive/hive.dart';

part 'mapel.g.dart';

@HiveType(typeId: 0)
class Mapel extends HiveObject {
  @HiveField(0)
  late String title;

  @HiveField(1)
  late String kelas;

  @HiveField(2)
  late String jam;
}
