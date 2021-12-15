import 'package:flutter/material.dart';
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
}
