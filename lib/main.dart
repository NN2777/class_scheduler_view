import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:class_scheduler_view/screen/editschedule.dart';
import 'package:class_scheduler_view/screen/body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditSchedule(),
    );
  }
=======
import 'package:hive/hive.dart';
import 'model/mapel.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screen/mapel_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(MapelAdapter());
  await Hive.openBox<Mapel>('mapels');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Class Scheduller App';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: MapelPage(),
      );
>>>>>>> 361d1efd436a5649243baae6739390b1b6852e3b
}
