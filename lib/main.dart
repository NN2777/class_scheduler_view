import 'package:class_scheduler_view/screen/editschedule.dart';
import 'package:class_scheduler_view/screen/homescreen.dart';
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
        //klw mau liat yg hive punyaku baru kalian Uncomment ini punyaku
        // home: MapelPage(),

        //klw hanum mau liat hasil nya hanum code dibawah ini hapus comment nya ya
        home: HomeScreen(),

        //klw nofal mau liat hasil nya hanum code dibawah ini hapus comment nya ya
        //home: EditSchedule(),
      );
}
