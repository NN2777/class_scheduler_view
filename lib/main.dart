import 'package:flutter/material.dart';
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
}
