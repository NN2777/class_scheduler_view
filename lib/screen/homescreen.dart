import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        child: Row(
          children: [
            Container(
                child: GestureDetector(
              child: Image.asset(
                'images/kiri.png',
                width: 30,
                height: 30,
              ),
            )),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 33, right: 172, left: 172, bottom: 45),
                    child: Text(
                      'SCHEDULER',
                      style: TextStyle(
                        fontFamily: 'Keep Calm',
                        color: Color(0xff43426D),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 68, left: 82),
                        child: Text(
                          'SENIN',
                          style: TextStyle(
                            fontFamily: 'Keep Calm',
                            color: Color(0xff43426D),
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 68, right: 82),
                        child: Text(
                          '12 Desember 2021',
                          style: TextStyle(
                            fontFamily: 'Keep Calm',
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 29, bottom: 95, left: 65, right: 65),
                    width: 282,
                    height: 443,
                    color: Color(0xffC4C4C4),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 36, left: 25, right: 25),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 27, bottom: 27, left: 20, right: 14),
                                child: Image.asset(
                                  'images/link.png',
                                  width: 110,
                                  height: 34,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 20, left: 58, right: 105, bottom: 45),
                                child: Text(
                                  'SENIN',
                                  style: TextStyle(
                                    fontFamily: 'Keep Calm',
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 43, left: 58, right: 105, bottom: 22),
                                child: Text(
                                  '07.00 - 09.00',
                                  style: TextStyle(
                                    fontFamily: 'Keep Calm',
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 210, right: 13, top: 37, bottom: 30),
                                child: Image.asset(
                                  'images/clock.png',
                                  width: 10,
                                  height: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: 25, right: 25, bottom: 200),
                          color: Color(0xffE2DFDF),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 20, left: 20, right: 175, bottom: 95),
                                child: Text(
                                  'Link Zoom',
                                  style: TextStyle(
                                    fontFamily: 'Keep Calm',
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 20, left: 20, right: 175, bottom: 95),
                                child: Text(
                                  'https://zoom.us/j/95307811227?pwd=ZXFHNERtUUdpNmpJS2RxemRkR0Z3QT09',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Keep Calm',
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 60, left: 20, right: 175, bottom: 54),
                                child: Text(
                                  'Link Absen',
                                  style: TextStyle(
                                      fontFamily: 'Keep Calm',
                                      color: Colors.black,
                                      fontSize: 25),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 20, left: 20, right: 175, bottom: 95),
                                child: Text(
                                  'https://slc.polinema.ac.id/spada/',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Keep Calm',
                                      color: Colors.black,
                                      fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: GestureDetector(
                child: Image.asset(
                  'images/kanan.png',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
