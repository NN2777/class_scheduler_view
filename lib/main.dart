import 'package:class_scheduler_view/screen/editschedule.dart';
import 'package:class_scheduler_view/screen/homes_creen.dart';
import 'package:class_scheduler_view/screens/login_page.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Scheduler',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.indigo,brightness: Brightness.dark,),
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LoginScreen(),
    );
  }
}
