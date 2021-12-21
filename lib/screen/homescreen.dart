import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get cards => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 33, right: 172, left: 172, bottom: 45),
              child: Text(
                'SCHEDULER',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 68, left: 82),
                  child: Text(
                    'NAMA HARI',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 48,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 73, right: 322),
                  child: Text(
                    'TANGGAL',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 29, bottom: 95, left: 65, right: 65),
              color: Color(0xffC4C4C4),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 36, left: 25, right: 25),
                    
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
